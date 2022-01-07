
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int pDataFlashDesc; TYPE_1__* pDevice; } ;
struct TYPE_5__ {unsigned int pages_number; int cs; } ;
typedef int AT91S_DataFlashStatus ;
typedef TYPE_2__* AT91PS_DataFlash ;


 int AT91C_DATAFLASH_ERROR ;
 int AT91C_DATAFLASH_OK ;
 int AT91C_DATAFLASH_TIMEOUT ;
 int AT91F_DataFlashWaitReady (int ,int ) ;
 unsigned int AT91F_PageErase (TYPE_2__*,unsigned int) ;
 int AT91F_SpiEnable (int ) ;
 int printf (char*,unsigned int,unsigned int) ;

AT91S_DataFlashStatus AT91F_DataFlashErase(AT91PS_DataFlash pDataFlash)
{
 unsigned int page;
 unsigned int status;

 AT91F_SpiEnable(pDataFlash->pDevice->cs);

  for(page=0; page < pDataFlash->pDevice->pages_number; page++)
     {

  if ((page & 0x00FF) == 0)
   printf("\rERA %d/%d", page, pDataFlash->pDevice->pages_number);
  status = AT91F_PageErase(pDataFlash, page);
  AT91F_DataFlashWaitReady(pDataFlash->pDataFlashDesc, AT91C_DATAFLASH_TIMEOUT);
  if (!status)
   return AT91C_DATAFLASH_ERROR;
    }

 return AT91C_DATAFLASH_OK;
}
