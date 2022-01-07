
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct vas_window {int wcreds_max; scalar_t__ tx_win; } ;


 int GET_FIELD (int ,scalar_t__) ;
 int LRX_WCRED ;
 int TASK_UNINTERRUPTIBLE ;
 int TX_WCRED ;
 int VAS_LRX_WCRED ;
 int VAS_TX_WCRED ;
 int VAS_WINCTL_RX_WCRED_MODE ;
 int VAS_WINCTL_TX_WCRED_MODE ;
 int VREG (int ) ;
 int WINCTL ;
 int msecs_to_jiffies (int) ;
 scalar_t__ read_hvwc_reg (struct vas_window*,int ) ;
 int schedule_timeout (int ) ;
 int set_current_state (int ) ;

__attribute__((used)) static void poll_window_credits(struct vas_window *window)
{
 u64 val;
 int creds, mode;

 val = read_hvwc_reg(window, VREG(WINCTL));
 if (window->tx_win)
  mode = GET_FIELD(VAS_WINCTL_TX_WCRED_MODE, val);
 else
  mode = GET_FIELD(VAS_WINCTL_RX_WCRED_MODE, val);

 if (!mode)
  return;
retry:
 if (window->tx_win) {
  val = read_hvwc_reg(window, VREG(TX_WCRED));
  creds = GET_FIELD(VAS_TX_WCRED, val);
 } else {
  val = read_hvwc_reg(window, VREG(LRX_WCRED));
  creds = GET_FIELD(VAS_LRX_WCRED, val);
 }

 if (creds < window->wcreds_max) {
  val = 0;
  set_current_state(TASK_UNINTERRUPTIBLE);
  schedule_timeout(msecs_to_jiffies(10));
  goto retry;
 }
}
