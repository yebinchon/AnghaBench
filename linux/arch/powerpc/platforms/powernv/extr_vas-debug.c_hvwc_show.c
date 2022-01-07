
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vas_window {int hvwc_map; } ;
struct seq_file {struct vas_window* private; } ;


 int AMR ;
 int CURR_MSG_COUNT ;
 int FAULT_TX_WIN ;
 int HV_INTR_SRC_RA ;
 int LDATA_STAMP_CTL ;
 int LDMA_CACHE_CTL ;
 int LFIFO_BAR ;
 int LFIFO_SIZE ;
 int LNOTIFY_AFTER_COUNT ;
 int LNOTIFY_CTL ;
 int LNOTIFY_LPID ;
 int LNOTIFY_PID ;
 int LNOTIFY_SCOPE ;
 int LNOTIFY_TID ;
 int LPID ;
 int LRFIFO_PUSH ;
 int LRFIFO_WIN_PTR ;
 int LRX_WCRED ;
 int LRX_WCRED_ADDER ;
 int NX_UTIL_ADDER ;
 int OSU_INTR_SRC_RA ;
 int PID ;
 int PSWID ;
 int SEIDR ;
 int TX_RSVD_BUF_COUNT ;
 int TX_WCRED ;
 int TX_WCRED_ADDER ;
 int VREG (int ) ;
 int WINCTL ;
 int WIN_CTX_CACHING_CTL ;
 int WIN_STATUS ;
 int XLATE_CTL ;
 int XLATE_LPCR ;
 int XLATE_MSR ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int print_reg (struct seq_file*,struct vas_window*,int ) ;
 int vas_mutex ;

__attribute__((used)) static int hvwc_show(struct seq_file *s, void *private)
{
 struct vas_window *window = s->private;

 mutex_lock(&vas_mutex);


 if (!window->hvwc_map)
  goto unlock;

 print_reg(s, window, VREG(LPID));
 print_reg(s, window, VREG(PID));
 print_reg(s, window, VREG(XLATE_MSR));
 print_reg(s, window, VREG(XLATE_LPCR));
 print_reg(s, window, VREG(XLATE_CTL));
 print_reg(s, window, VREG(AMR));
 print_reg(s, window, VREG(SEIDR));
 print_reg(s, window, VREG(FAULT_TX_WIN));
 print_reg(s, window, VREG(OSU_INTR_SRC_RA));
 print_reg(s, window, VREG(HV_INTR_SRC_RA));
 print_reg(s, window, VREG(PSWID));
 print_reg(s, window, VREG(LFIFO_BAR));
 print_reg(s, window, VREG(LDATA_STAMP_CTL));
 print_reg(s, window, VREG(LDMA_CACHE_CTL));
 print_reg(s, window, VREG(LRFIFO_PUSH));
 print_reg(s, window, VREG(CURR_MSG_COUNT));
 print_reg(s, window, VREG(LNOTIFY_AFTER_COUNT));
 print_reg(s, window, VREG(LRX_WCRED));
 print_reg(s, window, VREG(LRX_WCRED_ADDER));
 print_reg(s, window, VREG(TX_WCRED));
 print_reg(s, window, VREG(TX_WCRED_ADDER));
 print_reg(s, window, VREG(LFIFO_SIZE));
 print_reg(s, window, VREG(WINCTL));
 print_reg(s, window, VREG(WIN_STATUS));
 print_reg(s, window, VREG(WIN_CTX_CACHING_CTL));
 print_reg(s, window, VREG(TX_RSVD_BUF_COUNT));
 print_reg(s, window, VREG(LRFIFO_WIN_PTR));
 print_reg(s, window, VREG(LNOTIFY_CTL));
 print_reg(s, window, VREG(LNOTIFY_PID));
 print_reg(s, window, VREG(LNOTIFY_LPID));
 print_reg(s, window, VREG(LNOTIFY_TID));
 print_reg(s, window, VREG(LNOTIFY_SCOPE));
 print_reg(s, window, VREG(NX_UTIL_ADDER));
unlock:
 mutex_unlock(&vas_mutex);
 return 0;
}
