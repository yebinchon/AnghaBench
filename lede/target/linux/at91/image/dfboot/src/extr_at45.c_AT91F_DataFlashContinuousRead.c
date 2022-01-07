
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* pDataFlashDesc; TYPE_1__* pDevice; } ;
struct TYPE_7__ {unsigned char* rx_data_pt; int rx_data_size; unsigned char* tx_data_pt; int tx_data_size; } ;
struct TYPE_6__ {int pages_size; int pages_number; } ;
typedef int AT91S_DataFlashStatus ;
typedef TYPE_3__* AT91PS_DataFlash ;


 int AT91C_DATAFLASH_MEMORY_OVERFLOW ;
 int AT91F_DataFlashSendCommand (TYPE_3__*,int ,int,int) ;
 int DB_CONTINUOUS_ARRAY_READ ;

__attribute__((used)) static AT91S_DataFlashStatus AT91F_DataFlashContinuousRead(
  AT91PS_DataFlash pDataFlash,
 int src,
 unsigned char *dataBuffer,
 int sizeToRead )
{
 AT91S_DataFlashStatus status;

 if ( (src + sizeToRead) > (pDataFlash->pDevice->pages_size * (pDataFlash->pDevice->pages_number)))
  return AT91C_DATAFLASH_MEMORY_OVERFLOW;

 pDataFlash->pDataFlashDesc->rx_data_pt = dataBuffer;
 pDataFlash->pDataFlashDesc->rx_data_size = sizeToRead;
 pDataFlash->pDataFlashDesc->tx_data_pt = dataBuffer;
 pDataFlash->pDataFlashDesc->tx_data_size = sizeToRead;

 status = AT91F_DataFlashSendCommand(pDataFlash, DB_CONTINUOUS_ARRAY_READ, 8, src);

 return(status);
}
