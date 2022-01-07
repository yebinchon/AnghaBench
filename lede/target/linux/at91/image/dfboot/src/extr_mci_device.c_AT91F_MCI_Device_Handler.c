
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {unsigned int MCI_IDR; } ;
struct TYPE_8__ {int PDC_PTCR; } ;
struct TYPE_7__ {TYPE_1__* pMCI_DeviceDesc; } ;
struct TYPE_6__ {void* state; } ;
typedef TYPE_2__* AT91PS_MciDevice ;


 TYPE_5__* AT91C_BASE_MCI ;
 TYPE_4__* AT91C_BASE_PDC_MCI ;
 void* AT91C_MCI_IDLE ;
 unsigned int AT91C_MCI_RXBUFF ;
 unsigned int AT91C_MCI_TXBUFE ;
 int AT91C_PDC_RXTDIS ;
 int AT91C_PDC_TXTDIS ;

void AT91F_MCI_Device_Handler(
 AT91PS_MciDevice pMCI_Device,
 unsigned int status)
{

 if ( status & AT91C_MCI_TXBUFE )
    {
  AT91C_BASE_MCI->MCI_IDR = AT91C_MCI_TXBUFE;
   AT91C_BASE_PDC_MCI->PDC_PTCR = AT91C_PDC_TXTDIS;

  pMCI_Device->pMCI_DeviceDesc->state = AT91C_MCI_IDLE;
 }


    if ( status & AT91C_MCI_RXBUFF )
    {
        AT91C_BASE_MCI->MCI_IDR = AT91C_MCI_RXBUFF;
   AT91C_BASE_PDC_MCI->PDC_PTCR = AT91C_PDC_RXTDIS;

  pMCI_Device->pMCI_DeviceDesc->state = AT91C_MCI_IDLE;
 }

}
