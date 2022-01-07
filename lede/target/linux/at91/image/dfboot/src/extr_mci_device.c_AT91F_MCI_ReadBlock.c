
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_8__ ;
typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_13__ {int MCI_MR; int MCI_IER; } ;
struct TYPE_12__ {int PDC_PTCR; unsigned int PDC_RPR; int PDC_RCR; } ;
struct TYPE_11__ {TYPE_2__* pMCI_DeviceDesc; TYPE_1__* pMCI_DeviceFeatures; } ;
struct TYPE_10__ {scalar_t__ state; } ;
struct TYPE_9__ {int Memory_Capacity; int Max_Read_DataBlock_Length; int Read_Partial; int Relative_Card_Address; } ;
typedef TYPE_3__* AT91PS_MciDevice ;


 TYPE_8__* AT91C_BASE_MCI ;
 TYPE_7__* AT91C_BASE_PDC_MCI ;
 scalar_t__ AT91C_CMD_SEND_OK ;
 scalar_t__ AT91C_MCI_IDLE ;
 int AT91C_MCI_PDCMODE ;
 int AT91C_MCI_RXBUFF ;
 scalar_t__ AT91C_MCI_RX_SINGLE_BLOCK ;
 int AT91C_PDC_RXTDIS ;
 int AT91C_PDC_RXTEN ;
 int AT91C_PDC_TXTDIS ;
 int AT91C_READ_ERROR ;
 int AT91C_READ_OK ;
 int AT91C_READ_SINGLE_BLOCK_CMD ;
 int AT91C_SR_READY_FOR_DATA ;
 int AT91F_MCI_GetStatus (TYPE_3__*,int ) ;
 scalar_t__ AT91F_MCI_SendCommand (TYPE_3__*,int ,int) ;

int AT91F_MCI_ReadBlock(
 AT91PS_MciDevice pMCI_Device,
 int src,
 unsigned int *dataBuffer,
 int sizeToRead )
{

    if(pMCI_Device->pMCI_DeviceDesc->state != AT91C_MCI_IDLE)
     return AT91C_READ_ERROR;

    if( (AT91F_MCI_GetStatus(pMCI_Device,pMCI_Device->pMCI_DeviceFeatures->Relative_Card_Address) & AT91C_SR_READY_FOR_DATA) != AT91C_SR_READY_FOR_DATA)
     return AT91C_READ_ERROR;

    if ( (src + sizeToRead) > pMCI_Device->pMCI_DeviceFeatures->Memory_Capacity )
  return AT91C_READ_ERROR;


 if ( (src % pMCI_Device->pMCI_DeviceFeatures->Max_Read_DataBlock_Length) != 0 )
  return AT91C_READ_ERROR;



     if( (sizeToRead < pMCI_Device->pMCI_DeviceFeatures->Max_Read_DataBlock_Length)
     && (pMCI_Device->pMCI_DeviceFeatures->Read_Partial == 0x00) )
     return AT91C_READ_ERROR;

    if( sizeToRead > pMCI_Device->pMCI_DeviceFeatures->Max_Read_DataBlock_Length)
     return AT91C_READ_ERROR;



 AT91C_BASE_MCI->MCI_MR |= ((pMCI_Device->pMCI_DeviceFeatures->Max_Read_DataBlock_Length << 16) | AT91C_MCI_PDCMODE);

    if (sizeToRead %4)
  sizeToRead = (sizeToRead /4)+1;
 else
  sizeToRead = sizeToRead/4;

 AT91C_BASE_PDC_MCI->PDC_PTCR = (AT91C_PDC_TXTDIS | AT91C_PDC_RXTDIS);
    AT91C_BASE_PDC_MCI->PDC_RPR = (unsigned int)dataBuffer;
    AT91C_BASE_PDC_MCI->PDC_RCR = sizeToRead;


    if ( AT91F_MCI_SendCommand(pMCI_Device, AT91C_READ_SINGLE_BLOCK_CMD, src) != AT91C_CMD_SEND_OK )
     return AT91C_READ_ERROR;

 pMCI_Device->pMCI_DeviceDesc->state = AT91C_MCI_RX_SINGLE_BLOCK;


    AT91C_BASE_MCI->MCI_IER = AT91C_MCI_RXBUFF;


 AT91C_BASE_PDC_MCI->PDC_PTCR = AT91C_PDC_RXTEN;

 return AT91C_READ_OK;
}
