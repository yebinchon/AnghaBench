
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;
typedef struct TYPE_20__ TYPE_15__ ;
typedef struct TYPE_19__ TYPE_14__ ;
typedef struct TYPE_18__ TYPE_10__ ;


struct TYPE_24__ {unsigned int pData; } ;
struct TYPE_23__ {int (* Read ) (TYPE_3__*,char*,unsigned int volatile,int ,int ) ;} ;
struct TYPE_22__ {int (* Stop ) (TYPE_2__*) ;int (* Start ) (TYPE_2__*,int ,int ,int (*) (),int *) ;} ;
struct TYPE_21__ {int pages_number; int pages_size; } ;
struct TYPE_20__ {TYPE_1__ Device; int id; } ;
struct TYPE_19__ {int (* CRC32 ) (unsigned char const*,unsigned int volatile,unsigned int*) ;int (* OpenPipe ) (TYPE_3__*,int ,int ) ;int (* OpenSvcXmodem ) (TYPE_4__*,int ,TYPE_10__*) ;int (* OpenSBuffer ) (int *) ;int SYSTIMER_DESC; int (* OpenCtlTempo ) (TYPE_10__*,void*) ;} ;
struct TYPE_18__ {int (* CtlTempoCreate ) (TYPE_10__*,TYPE_2__*) ;int (* CtlTempoStart ) (void*) ;} ;
typedef TYPE_2__ AT91S_SvcTempo ;
typedef int AT91PS_USART ;
typedef int AT91PS_SvcComm ;
typedef int AT91PS_Buffer ;


 int AT91C_AIC_PRIOR_HIGHEST ;
 int AT91C_AIC_SRCTYPE_INT_LEVEL_SENSITIVE ;
 int AT91C_BASE_AIC ;
 scalar_t__ AT91C_BASE_DBGU ;
 unsigned int AT91C_BOOT_DATAFLASH_ADDR ;
 int AT91C_DELAY_TO_BOOT ;
 unsigned int AT91C_DOWNLOAD_BASE_ADDRESS ;
 int volatile AT91C_DOWNLOAD_MAX_SIZE ;
 int AT91C_ID_SYS ;
 scalar_t__ AT91C_OFFSET_VECT6 ;
 TYPE_14__* AT91C_ROM_BOOT_ADDRESS ;
 int AT91F_AIC_ConfigureIt (int ,int ,int ,int ,int ) ;
 int AT91F_AIC_EnableIt (int ,int ) ;
 int AT91F_DataflashInit () ;
 int AT91F_DisplayMenu () ;
 int AT91F_MemoryDisplay (unsigned int,int) ;
 int AT91F_ReadLine (char*,char*) ;
 int AT91F_ST_ASM_HANDLER ;
 int AT91F_SetPLL () ;
 int AT91F_StartBoot () ;
 int AT91F_WaitKeyPressed () ;
 int AsciiToHex (char*,unsigned int*) ;


 scalar_t__ Program_From_MCI () ;
 int XmodemComplete ;
 int XmodemProtocol ;
 int at91_init_uarts () ;
 TYPE_10__ ctlTempo ;
 TYPE_15__* dataflash_info ;
 int erase_dataflash (unsigned int) ;
 char* message ;
 TYPE_14__* pAT91 ;
 int printf (char*) ;
 int read_dataflash (unsigned int,unsigned int volatile,char*) ;
 int sXmBuffer ;
 int stub1 (TYPE_10__*,void*) ;
 int stub10 (unsigned char const*,unsigned int volatile,unsigned int*) ;
 int stub11 (unsigned char const*,unsigned int volatile,unsigned int*) ;
 int stub2 (void*) ;
 int stub3 (TYPE_10__*,TYPE_2__*) ;
 int stub4 (int *) ;
 int stub5 (TYPE_4__*,int ,TYPE_10__*) ;
 int stub6 (TYPE_3__*,int ,int ) ;
 int stub7 (TYPE_2__*,int ,int ,int (*) (),int *) ;
 int stub8 (TYPE_2__*) ;
 int stub9 (TYPE_3__*,char*,unsigned int volatile,int ,int ) ;
 TYPE_4__ svcXmodem ;
 int write_dataflash (unsigned int,unsigned int volatile,unsigned int volatile) ;
 TYPE_3__ xmodemPipe ;

int main(void)
{




 AT91S_SvcTempo svcBootTempo;
 unsigned int ix;
 volatile unsigned int AddressToDownload, SizeToDownload;
  unsigned int DeviceAddress = 0;
 char command = 0;






 volatile int Nb_Device = 0;
 int mci_present = 0;

 pAT91 = AT91C_ROM_BOOT_ADDRESS;

 if (!AT91F_SetPLL())
 {
  printf("F SetPLL");
  while(1);
 }

 at91_init_uarts();


 pAT91->OpenCtlTempo(&ctlTempo, (void *) &(pAT91->SYSTIMER_DESC));
 ctlTempo.CtlTempoStart((void *) &(pAT91->SYSTIMER_DESC));


 ctlTempo.CtlTempoCreate(&ctlTempo, &svcBootTempo);
 AT91F_AIC_ConfigureIt(
  AT91C_BASE_AIC,
  AT91C_ID_SYS,
  AT91C_AIC_PRIOR_HIGHEST,
  AT91C_AIC_SRCTYPE_INT_LEVEL_SENSITIVE,
  AT91F_ST_ASM_HANDLER
 );

 AT91F_AIC_EnableIt(AT91C_BASE_AIC, AT91C_ID_SYS);




 svcBootTempo.Start(&svcBootTempo, AT91C_DELAY_TO_BOOT,
                    0, AT91F_StartBoot, ((void*)0));


 while(1)
 {
  while(command == 0)
  {
   AddressToDownload = AT91C_DOWNLOAD_BASE_ADDRESS;
   SizeToDownload = AT91C_DOWNLOAD_MAX_SIZE;
   DeviceAddress = 0;


   if (!Nb_Device)
    Nb_Device = AT91F_DataflashInit();

   mci_present = AT91F_DisplayMenu();
   message[0] = 0;
   AT91F_ReadLine ("Enter: ", message);



   svcBootTempo.Stop(&svcBootTempo);


   command = message[0];
   for(ix = 1; (message[ix] == ' ') && (ix < 12); ix++);

   if(!AsciiToHex(&message[ix], &DeviceAddress) )
    DeviceAddress = 0;

   switch(command)
   {
    case '3':
     if (mci_present)
      Program_From_MCI();
     command = 0;
     break;

    case '4':
     AT91F_StartBoot();
     command = 0;
    break;
    case '7':
     switch(DeviceAddress & 0xFF000000)
     {
      case 129:
       break;
      case 128:
       break;
      default:
       command = 0;
       break;
     }

     if (command != 0) {
      AT91F_ReadLine ("RDY ERA\nSure?",
        message);
      if(message[0] == 'Y' || message[0] == 'y') {
       erase_dataflash(DeviceAddress & 0xFF000000);

      }


     }
     command = 0;

    break;

    default:
     command = 0;
    break;
   }
  }
  }
}
