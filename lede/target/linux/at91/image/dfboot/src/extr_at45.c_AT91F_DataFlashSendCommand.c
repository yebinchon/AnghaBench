
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {unsigned char* command; unsigned char* tx_cmd_pt; unsigned int tx_cmd_size; unsigned char* rx_cmd_pt; unsigned int rx_cmd_size; } ;
struct TYPE_6__ {TYPE_3__* pDataFlashDesc; TYPE_1__* pDevice; } ;
struct TYPE_5__ {unsigned int pages_size; unsigned int page_offset; int pages_number; } ;
typedef int AT91S_DataFlashStatus ;
typedef TYPE_2__* AT91PS_DataFlash ;


 int AT91F_SpiWrite (TYPE_3__*) ;

__attribute__((used)) static AT91S_DataFlashStatus AT91F_DataFlashSendCommand(
 AT91PS_DataFlash pDataFlash,
 unsigned char OpCode,
 unsigned int CmdSize,
 unsigned int DataflashAddress)
{
 unsigned int adr;


 adr = ((DataflashAddress / (pDataFlash->pDevice->pages_size))
         << pDataFlash->pDevice->page_offset) +
         (DataflashAddress % (pDataFlash->pDevice->pages_size));


 pDataFlash->pDataFlashDesc->command[0] = OpCode;
 if (pDataFlash->pDevice->pages_number >= 16384)
 {
  pDataFlash->pDataFlashDesc->command[1] = (unsigned char)((adr & 0x0F000000) >> 24);
  pDataFlash->pDataFlashDesc->command[2] = (unsigned char)((adr & 0x00FF0000) >> 16);
  pDataFlash->pDataFlashDesc->command[3] = (unsigned char)((adr & 0x0000FF00) >> 8);
  pDataFlash->pDataFlashDesc->command[4] = (unsigned char)(adr & 0x000000FF);
 }
 else
 {
  pDataFlash->pDataFlashDesc->command[1] = (unsigned char)((adr & 0x00FF0000) >> 16);
  pDataFlash->pDataFlashDesc->command[2] = (unsigned char)((adr & 0x0000FF00) >> 8);
  pDataFlash->pDataFlashDesc->command[3] = (unsigned char)(adr & 0x000000FF) ;
  pDataFlash->pDataFlashDesc->command[4] = 0;
 }
 pDataFlash->pDataFlashDesc->command[5] = 0;
 pDataFlash->pDataFlashDesc->command[6] = 0;
 pDataFlash->pDataFlashDesc->command[7] = 0;


 pDataFlash->pDataFlashDesc->tx_cmd_pt = pDataFlash->pDataFlashDesc->command ;
 pDataFlash->pDataFlashDesc->tx_cmd_size = CmdSize ;
 pDataFlash->pDataFlashDesc->rx_cmd_pt = pDataFlash->pDataFlashDesc->command ;
 pDataFlash->pDataFlashDesc->rx_cmd_size = CmdSize ;

 return AT91F_SpiWrite(pDataFlash->pDataFlashDesc);
}
