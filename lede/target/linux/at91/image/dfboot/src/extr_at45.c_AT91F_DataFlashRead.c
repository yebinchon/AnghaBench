
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int pDataFlashDesc; TYPE_1__* pDevice; } ;
struct TYPE_5__ {int cs; } ;
typedef TYPE_2__* AT91PS_DataFlash ;


 scalar_t__ AT91C_DATAFLASH_OK ;
 int AT91C_DATAFLASH_TIMEOUT ;
 scalar_t__ AT91F_DataFlashContinuousRead (TYPE_2__*,unsigned long,unsigned char*,unsigned long) ;
 scalar_t__ AT91F_DataFlashWaitReady (int ,int ) ;
 int AT91F_SpiEnable (int ) ;

int AT91F_DataFlashRead(
 AT91PS_DataFlash pDataFlash,
 unsigned long addr,
 unsigned long size,
 char *buffer)
{
 unsigned long SizeToRead;

 AT91F_SpiEnable(pDataFlash->pDevice->cs);

 if(AT91F_DataFlashWaitReady(pDataFlash->pDataFlashDesc, AT91C_DATAFLASH_TIMEOUT) != AT91C_DATAFLASH_OK)
  return -1;

 while (size)
 {
  SizeToRead = (size < 0x8000)? size:0x8000;

  if (AT91F_DataFlashWaitReady(pDataFlash->pDataFlashDesc, AT91C_DATAFLASH_TIMEOUT)
      != AT91C_DATAFLASH_OK)
   return -1;

  if (AT91F_DataFlashContinuousRead (pDataFlash, addr, (unsigned char *)buffer,
                                     SizeToRead) != AT91C_DATAFLASH_OK)
   return -1;

  size -= SizeToRead;
  addr += SizeToRead;
  buffer += SizeToRead;
 }

    return AT91C_DATAFLASH_OK;
}
