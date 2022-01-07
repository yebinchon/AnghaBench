
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vas_rx_win_attr {int pin_win; int nx_win; int fault_win; int intr_disable; int rx_wcred_mode; int tx_wcred_mode; int rx_win_ord_mode; int tx_win_ord_mode; int notify_disable; int user_win; } ;
typedef enum vas_cop_type { ____Placeholder_vas_cop_type } vas_cop_type ;


 int VAS_COP_TYPE_842 ;
 int VAS_COP_TYPE_842_HIPRI ;
 int VAS_COP_TYPE_FAULT ;
 int VAS_COP_TYPE_FTW ;
 int memset (struct vas_rx_win_attr*,int ,int) ;

void vas_init_rx_win_attr(struct vas_rx_win_attr *rxattr, enum vas_cop_type cop)
{
 memset(rxattr, 0, sizeof(*rxattr));

 if (cop == VAS_COP_TYPE_842 || cop == VAS_COP_TYPE_842_HIPRI) {
  rxattr->pin_win = 1;
  rxattr->nx_win = 1;
  rxattr->fault_win = 0;
  rxattr->intr_disable = 1;
  rxattr->rx_wcred_mode = 1;
  rxattr->tx_wcred_mode = 1;
  rxattr->rx_win_ord_mode = 1;
  rxattr->tx_win_ord_mode = 1;
 } else if (cop == VAS_COP_TYPE_FAULT) {
  rxattr->pin_win = 1;
  rxattr->fault_win = 1;
  rxattr->notify_disable = 1;
  rxattr->rx_wcred_mode = 1;
  rxattr->tx_wcred_mode = 1;
  rxattr->rx_win_ord_mode = 1;
  rxattr->tx_win_ord_mode = 1;
 } else if (cop == VAS_COP_TYPE_FTW) {
  rxattr->user_win = 1;
  rxattr->intr_disable = 1;







 }
}
