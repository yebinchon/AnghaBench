
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned char DataFlash_state; int rx_cmd_size; int tx_cmd_size; scalar_t__* rx_cmd_pt; scalar_t__* command; scalar_t__* tx_cmd_pt; scalar_t__ tx_data_size; } ;
typedef int AT91S_DataFlashStatus ;
typedef TYPE_1__* AT91PS_DataflashDesc ;


 int AT91F_SpiWrite (TYPE_1__*) ;
 scalar_t__ DB_STATUS ;
 unsigned char GET_STATUS ;

__attribute__((used)) static AT91S_DataFlashStatus AT91F_DataFlashGetStatus(AT91PS_DataflashDesc pDesc)
{
 AT91S_DataFlashStatus status;


 pDesc->command[0] = DB_STATUS;
 pDesc->command[1] = 0;

 pDesc->DataFlash_state = GET_STATUS;
     pDesc->tx_data_size = 0 ;
     pDesc->tx_cmd_pt = pDesc->command ;
     pDesc->rx_cmd_pt = pDesc->command ;
     pDesc->rx_cmd_size = 2 ;
     pDesc->tx_cmd_size = 2 ;
     status = AT91F_SpiWrite (pDesc);

 pDesc->DataFlash_state = *( (unsigned char *) (pDesc->rx_cmd_pt) +1);
 return status;
}
