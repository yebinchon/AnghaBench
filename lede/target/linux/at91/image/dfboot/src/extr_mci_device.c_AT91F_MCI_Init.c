
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int MCI_IDR; } ;
typedef int AT91PS_USART ;


 int AT91C_AIC_PRIOR_HIGHEST ;
 int AT91C_AIC_SRCTYPE_INT_LEVEL_SENSITIVE ;
 int AT91C_BASE_AIC ;
 scalar_t__ AT91C_BASE_DBGU ;
 TYPE_1__* AT91C_BASE_MCI ;
 int AT91C_BASE_PDC_MCI ;
 int AT91C_BASE_PIOB ;
 int AT91C_ID_MCI ;
 scalar_t__ AT91C_INIT_OK ;
 int AT91C_MCI_DTOR_1MEGA_CYCLES ;
 int AT91C_MCI_MR_PDCMODE ;
 int AT91C_MCI_SDCARD_4BITS_SLOTA ;
 int AT91C_PIO_PB7 ;
 int AT91F_AIC_ConfigureIt (int ,int ,int ,int ,int ) ;
 int AT91F_AIC_EnableIt (int ,int ) ;
 int AT91F_ASM_MCI_Handler ;
 int AT91F_CfgDevice () ;
 int AT91F_MCI_CfgPIO () ;
 int AT91F_MCI_CfgPMC () ;
 int AT91F_MCI_Configure (TYPE_1__*,int ,int ,int ) ;
 scalar_t__ AT91F_MCI_SDCard_Init (int *) ;
 int AT91F_PDC_Open (int ) ;
 int AT91F_PIO_CfgOutput (int ,int ) ;
 int AT91F_PIO_SetOutput (int ,int ) ;
 int AT91F_US_EnableRx (int ) ;
 int FALSE ;
 int MCI_Device ;
 int TRUE ;

int AT91F_MCI_Init(void)
{






 AT91F_PIO_CfgOutput(AT91C_BASE_PIOB,AT91C_PIO_PB7);
 AT91F_PIO_SetOutput(AT91C_BASE_PIOB,AT91C_PIO_PB7);


 AT91F_MCI_CfgPIO();
 AT91F_MCI_CfgPMC();
 AT91F_PDC_Open(AT91C_BASE_PDC_MCI);


    AT91C_BASE_MCI->MCI_IDR = 0xFFFFFFFF;


 AT91F_CfgDevice();


 AT91F_AIC_ConfigureIt(AT91C_BASE_AIC,
       AT91C_ID_MCI,
       AT91C_AIC_PRIOR_HIGHEST,
       AT91C_AIC_SRCTYPE_INT_LEVEL_SENSITIVE,
       AT91F_ASM_MCI_Handler);


 AT91F_AIC_EnableIt(AT91C_BASE_AIC,AT91C_ID_MCI);


 AT91F_US_EnableRx((AT91PS_USART) AT91C_BASE_DBGU);

 AT91F_MCI_Configure(AT91C_BASE_MCI,
      AT91C_MCI_DTOR_1MEGA_CYCLES,
      AT91C_MCI_MR_PDCMODE,
      AT91C_MCI_SDCARD_4BITS_SLOTA);

 if(AT91F_MCI_SDCard_Init(&MCI_Device) != AT91C_INIT_OK)
  return FALSE;
 else
  return TRUE;

}
