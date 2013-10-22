Enter file contents here
#include<stdio.h>
#include<stdlib.h>
#include<math.h>

int main()
{
	int secim1, secim2, user, parola, yatırma=0, cekme=0, havale=0, bakiye_2525=1000, bakiye_2020=1000, hatalı;

	while(1) // İlk menüye dönmek için şartsız döngü.
	{
	printf("\t\t\t    PAMUKKALE UNIVERSITESI BANKASI \n\n");
	printf("\t\t\t        OTURUM ACMA MENUSU\n\n");
	printf("1) Oturum Ac\n");
	printf("2) Cıkıs\n\n");

	printf("Secim<1-2>: ");
	scanf("%d", &secim1);

	if(secim1!=1 && secim1!=2) // 1 ve 2'den farklı giriş yapıldığında uyarı mesajı.
	{
		printf("Hatalı giriş yaptınız. Lütfen tekrar deneyiniz..\a\n");
		printf("-------------------------------------------------\n\n");
	}
		switch(secim1)
	{
	case 1: // oturum aç seçeneği seçildiyse
		system("CLS"); // ekranı temizle
		
		for(hatalı=1;hatalı<=3;) // 3 yanlış giriş hakkı
		{
			printf("Lütfen Hesap Bilgilerinizi Giriniz:\n\n");
			printf("Kullanıcı adı: ");
			scanf("%d", &user);
			printf("Parola: ");
			scanf("%d", &parola);

			printf("\nBilgiler doğrulanıyor. . .");
			printf("\n\n");
		
		if((user==2525 && parola==12345) || (user==2020 && parola==54321)) //2 farklı kullanıcı tanımı
		{
			system("CLS");

			do
			{
				if(user==2525)
					printf("\t\t\t\t  HESAP NO: 2525\n");
				if(user==2020)
					printf("\t\t\t\t  HESAP NO: 2020\n");
			printf("\t\t\t      BANKA ISLEMLERI MENUSU\n\n");
			printf("1) Para Yatirma\n");
			printf("2) Para Cekme\n");
			printf("3) Havale Yapma\n");
			printf("4) Oturumu Kapat\n\n");
		
			printf("Secim<1-4>: ");
			scanf("%d", &secim2);
		
			if(secim2!=1 && secim2!=2 && secim2!=3 && secim2!=4) // 1,2,3,4'den farklı seçim yapıldığında uyarı mesajı
			{
				printf("Hatalı giris yaptınız. Lutfen tekrar deneyiniz..\a\n");
				printf("-------------------------------------------------\n\n");
			}

			switch(secim2)
			{
			case 1: // para yatırma
				printf("Yatıracagınız Para Miktarı<TL>: ");
				scanf("%d", &yatırma);
					if(user==2525)
					{
						bakiye_2525 = bakiye_2525 + yatırma;
						printf("\nHesabınıza %d TL yatırılıyor. . .\n", yatırma);
						printf("Isleminiz basarıyla gerceklestirildi.\n");
						printf("Mevcut Bakiye: %d TL.\n\n", bakiye_2525);
					}
					if(user==2020)
					{
						bakiye_2020 = bakiye_2020 + yatırma;
						printf("\nHesabınıza %d TL yatırılıyor. . .\n", yatırma);
						printf("Isleminiz basarıyla gerceklestirildi.\n");
						printf("Mevcut Bakiye: %d TL.\n\n", bakiye_2020);
					}
					break;
			case 2: // para çekme
				printf("Çekeceğiniz Para Miktarı<TL>: ");
				scanf("%d", &cekme);
					if(user==2525 && cekme<=bakiye_2525)
					{
						bakiye_2525 -= cekme;
						printf("\nHesabınızdan %d TL cekiliyor. . .\n", cekme);
						printf("Isleminiz basarıyla gerceklestirildi.\n");
						printf("Kalan Bakiye: %d TL.\n\n", bakiye_2525);
						break;
					}
					if(user==2020 && cekme<=bakiye_2020)
					{
						bakiye_2020 -= cekme;
						printf("\nHesabınızdan %d TL çekiliyor. . .\n", cekme);
						printf("Isleminiz basarıyla gerceklestirildi.\n");
						printf("Kalan Bakiye: %d TL.\n\n", bakiye_2020);
						break;
					}	
					else if(cekme>bakiye_2525 || cekme>bakiye_2020) // çekmek istenilen miktar mevcut bakiyeden büyükse uyarı mesajı.
					{
								printf("\nHesabınızdan %d TL cekiliyor. . .\n", cekme);
								printf("\nYETERSİZ BAKİYE !!\a\n");
								printf("Malesef isleminiz gerceklestirilemedi..\n\n");
					}

				break;
			case 3: // havale etme
				printf("Havale Edeceginiz Para<TL> :");
				scanf("%d", &havale);
				if(user==2525 && cekme<=bakiye_2525)
					{
						bakiye_2525 -= havale;
						printf("\nHesabınızdan %d TL havale ediliyor. . .\n", havale);
						printf("Isleminiz başarıyla gerceklectirildi.\n");
						printf("Kalan Bakiye: %d TL.\n\n", bakiye_2525);
				}
						break;
						printf("Havale Edeceginiz Para<TL> :");
						scanf("%d", &havale);
						if(user==2020 && cekme<=bakiye_2020)
					{
						bakiye_2020 -= havale;
						printf("\nHesabınızdan %d TL havale ediliyor. . .\n", havale);
						printf("Isleminiz basarıyla gerceklestirildi.\n");
						printf("Kalan Bakiye: %d TL.\n\n", bakiye_2020);
						break;
					}	
						else if(havale>bakiye_2525 || havale>bakiye_2020) // havale edilmek istenilen miktar mevcut bakiyeden büyükse uyarı mesajı.
					{
								printf("\nHesabınızdan %d TL havale ediliyor. . .\n", havale);
								printf("\nYETERSİZ BAKİYE !!\a\n");
								printf("Malesef isleminiz gerceklestirilemedi..\n\n");
					}

				break;

			case 4: // oturum kapatma
				printf("Oturumunuz Kapatılıyor. . .");
				system("CLS");
				break;
			}
			}
			while(secim2!=4);
			
			break;
		}
		else // hatalı giriş yapıldığında uyarı mesajı.
		{
			printf("Yanlış giriş yaptınız. %d deneme hakkınız kaldı..\a\n", 3-hatalı);
			printf("-------------------------------------------------\n\n");		
			hatalı++;
		}
		}
		if (hatalı==4) // 4 kere hatalı giriş yapınca menüye geri döndür.
		{
					printf ("3 yanlış giriş yaptınız. Oturum açma menüsüne geri yönlendiriliyorsunuz..\a");
					system("CLS");
					
					break;
		}
		break;
	
	case 2: // çıkış mesajı
		printf("\nGüle güle efendim. Yine bekleriz..\n\n");
		break;
	}
	if(secim1==2) // ilk menüde çıkış seçilirse direk çık.
		return 0;
	}
	system("pause");
	return 0;
}


