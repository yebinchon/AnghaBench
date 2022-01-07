
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct vas_window {int dummy; } ;


 int GET_FIELD (int ,scalar_t__) ;
 int TASK_UNINTERRUPTIBLE ;
 int VAS_WIN_BUSY ;
 int VREG (int ) ;
 int WIN_STATUS ;
 int msecs_to_jiffies (int) ;
 scalar_t__ read_hvwc_reg (struct vas_window*,int ) ;
 int schedule_timeout (int ) ;
 int set_current_state (int ) ;

__attribute__((used)) static void poll_window_busy_state(struct vas_window *window)
{
 int busy;
 u64 val;

retry:
 val = read_hvwc_reg(window, VREG(WIN_STATUS));
 busy = GET_FIELD(VAS_WIN_BUSY, val);
 if (busy) {
  val = 0;
  set_current_state(TASK_UNINTERRUPTIBLE);
  schedule_timeout(msecs_to_jiffies(5));
  goto retry;
 }
}
