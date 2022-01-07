
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* MCI_RSPR; } ;
typedef int AT91PS_MciDevice ;


 TYPE_1__* AT91C_BASE_MCI ;
 int AT91C_CMD_SEND_ERROR ;
 scalar_t__ AT91C_CMD_SEND_OK ;
 int AT91C_SEND_STATUS_CMD ;
 scalar_t__ AT91F_MCI_SendCommand (int ,int ,unsigned int) ;

int AT91F_MCI_GetStatus(AT91PS_MciDevice pMCI_Device,unsigned int relative_card_address)
{
 if (AT91F_MCI_SendCommand(pMCI_Device,
        AT91C_SEND_STATUS_CMD,
        relative_card_address <<16) == AT91C_CMD_SEND_OK)
     return (AT91C_BASE_MCI->MCI_RSPR[0]);

    return AT91C_CMD_SEND_ERROR;
}
