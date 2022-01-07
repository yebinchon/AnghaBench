
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vas_window {int tx_win; int cop; int pid; int wcreds_max; scalar_t__ user_win; int nx_win; } ;
struct vas_winctx {int dummy; } ;
struct vas_rx_win_attr {scalar_t__ user_win; scalar_t__ wcreds_max; int nx_win; } ;
struct vas_instance {int dummy; } ;
typedef enum vas_cop_type { ____Placeholder_vas_cop_type } vas_cop_type ;


 int EINVAL ;
 struct vas_window* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct vas_window*) ;
 int VAS_WCREDS_DEFAULT ;
 int current ;
 struct vas_instance* find_vas_instance (int) ;
 int init_winctx_for_rxwin (struct vas_window*,struct vas_rx_win_attr*,struct vas_winctx*) ;
 int init_winctx_regs (struct vas_window*,struct vas_winctx*) ;
 int pr_devel (char*,...) ;
 int rx_win_args_valid (int,struct vas_rx_win_attr*) ;
 int set_vinst_win (struct vas_instance*,struct vas_window*) ;
 int task_pid_vnr (int ) ;
 int trace_vas_rx_win_open (int ,int,int,struct vas_rx_win_attr*) ;
 struct vas_window* vas_window_alloc (struct vas_instance*) ;

struct vas_window *vas_rx_win_open(int vasid, enum vas_cop_type cop,
   struct vas_rx_win_attr *rxattr)
{
 struct vas_window *rxwin;
 struct vas_winctx winctx;
 struct vas_instance *vinst;

 trace_vas_rx_win_open(current, vasid, cop, rxattr);

 if (!rx_win_args_valid(cop, rxattr))
  return ERR_PTR(-EINVAL);

 vinst = find_vas_instance(vasid);
 if (!vinst) {
  pr_devel("vasid %d not found!\n", vasid);
  return ERR_PTR(-EINVAL);
 }
 pr_devel("Found instance %d\n", vasid);

 rxwin = vas_window_alloc(vinst);
 if (IS_ERR(rxwin)) {
  pr_devel("Unable to allocate memory for Rx window\n");
  return rxwin;
 }

 rxwin->tx_win = 0;
 rxwin->nx_win = rxattr->nx_win;
 rxwin->user_win = rxattr->user_win;
 rxwin->cop = cop;
 rxwin->wcreds_max = rxattr->wcreds_max ?: VAS_WCREDS_DEFAULT;
 if (rxattr->user_win)
  rxwin->pid = task_pid_vnr(current);

 init_winctx_for_rxwin(rxwin, rxattr, &winctx);
 init_winctx_regs(rxwin, &winctx);

 set_vinst_win(vinst, rxwin);

 return rxwin;
}
