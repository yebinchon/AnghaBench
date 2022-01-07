
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vas_tx_win_attr {int rej_no_credit; int rx_wcred_mode; int tx_wcred_mode; int rx_win_ord_mode; int tx_win_ord_mode; int user_win; } ;
typedef enum vas_cop_type { ____Placeholder_vas_cop_type } vas_cop_type ;


 int VAS_COP_TYPE_842 ;
 int VAS_COP_TYPE_842_HIPRI ;
 int VAS_COP_TYPE_FTW ;
 int memset (struct vas_tx_win_attr*,int ,int) ;

void vas_init_tx_win_attr(struct vas_tx_win_attr *txattr, enum vas_cop_type cop)
{
 memset(txattr, 0, sizeof(*txattr));

 if (cop == VAS_COP_TYPE_842 || cop == VAS_COP_TYPE_842_HIPRI) {
  txattr->rej_no_credit = 0;
  txattr->rx_wcred_mode = 1;
  txattr->tx_wcred_mode = 1;
  txattr->rx_win_ord_mode = 1;
  txattr->tx_win_ord_mode = 1;
 } else if (cop == VAS_COP_TYPE_FTW) {
  txattr->user_win = 1;
 }
}
