
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vas_rx_win_attr {scalar_t__ rx_fifo_size; scalar_t__ wcreds_max; scalar_t__ intr_disable; scalar_t__ rx_fifo; scalar_t__ user_win; scalar_t__ notify_disable; scalar_t__ fault_win; scalar_t__ notify_early; scalar_t__ nx_win; } ;
typedef enum vas_cop_type { ____Placeholder_vas_cop_type } vas_cop_type ;


 int VAS_COP_TYPE_FTW ;
 int VAS_COP_TYPE_MAX ;
 scalar_t__ VAS_RX_FIFO_SIZE_MAX ;
 scalar_t__ VAS_RX_FIFO_SIZE_MIN ;
 scalar_t__ VAS_RX_WCREDS_MAX ;
 int pr_debug (char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static bool rx_win_args_valid(enum vas_cop_type cop,
   struct vas_rx_win_attr *attr)
{
 pr_debug("Rxattr: fault %d, notify %d, intr %d, early %d, fifo %d\n",
   attr->fault_win, attr->notify_disable,
   attr->intr_disable, attr->notify_early,
   attr->rx_fifo_size);

 if (cop >= VAS_COP_TYPE_MAX)
  return 0;

 if (cop != VAS_COP_TYPE_FTW &&
    attr->rx_fifo_size < VAS_RX_FIFO_SIZE_MIN)
  return 0;

 if (attr->rx_fifo_size > VAS_RX_FIFO_SIZE_MAX)
  return 0;

 if (attr->wcreds_max > VAS_RX_WCREDS_MAX)
  return 0;

 if (attr->nx_win) {

  if (attr->fault_win || attr->user_win)
   return 0;




  if (attr->notify_disable || !attr->intr_disable ||
    attr->notify_early)
   return 0;
 } else if (attr->fault_win) {

  if (attr->user_win)
   return 0;





  if (!attr->notify_disable || attr->intr_disable)
   return 0;

 } else if (attr->user_win) {




  if (attr->rx_fifo || attr->rx_fifo_size || !attr->intr_disable)
   return 0;
 } else {

  return 0;
 }

 return 1;
}
