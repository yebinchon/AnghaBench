
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vas_window {int dummy; } ;


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
 int write_hvwc_reg (struct vas_window*,int ,unsigned long long) ;

void reset_window_regs(struct vas_window *window)
{
 write_hvwc_reg(window, VREG(LPID), 0ULL);
 write_hvwc_reg(window, VREG(PID), 0ULL);
 write_hvwc_reg(window, VREG(XLATE_MSR), 0ULL);
 write_hvwc_reg(window, VREG(XLATE_LPCR), 0ULL);
 write_hvwc_reg(window, VREG(XLATE_CTL), 0ULL);
 write_hvwc_reg(window, VREG(AMR), 0ULL);
 write_hvwc_reg(window, VREG(SEIDR), 0ULL);
 write_hvwc_reg(window, VREG(FAULT_TX_WIN), 0ULL);
 write_hvwc_reg(window, VREG(OSU_INTR_SRC_RA), 0ULL);
 write_hvwc_reg(window, VREG(HV_INTR_SRC_RA), 0ULL);
 write_hvwc_reg(window, VREG(PSWID), 0ULL);
 write_hvwc_reg(window, VREG(LFIFO_BAR), 0ULL);
 write_hvwc_reg(window, VREG(LDATA_STAMP_CTL), 0ULL);
 write_hvwc_reg(window, VREG(LDMA_CACHE_CTL), 0ULL);
 write_hvwc_reg(window, VREG(LRFIFO_PUSH), 0ULL);
 write_hvwc_reg(window, VREG(CURR_MSG_COUNT), 0ULL);
 write_hvwc_reg(window, VREG(LNOTIFY_AFTER_COUNT), 0ULL);
 write_hvwc_reg(window, VREG(LRX_WCRED), 0ULL);
 write_hvwc_reg(window, VREG(LRX_WCRED_ADDER), 0ULL);
 write_hvwc_reg(window, VREG(TX_WCRED), 0ULL);
 write_hvwc_reg(window, VREG(TX_WCRED_ADDER), 0ULL);
 write_hvwc_reg(window, VREG(LFIFO_SIZE), 0ULL);
 write_hvwc_reg(window, VREG(WINCTL), 0ULL);
 write_hvwc_reg(window, VREG(WIN_STATUS), 0ULL);
 write_hvwc_reg(window, VREG(WIN_CTX_CACHING_CTL), 0ULL);
 write_hvwc_reg(window, VREG(TX_RSVD_BUF_COUNT), 0ULL);
 write_hvwc_reg(window, VREG(LRFIFO_WIN_PTR), 0ULL);
 write_hvwc_reg(window, VREG(LNOTIFY_CTL), 0ULL);
 write_hvwc_reg(window, VREG(LNOTIFY_PID), 0ULL);
 write_hvwc_reg(window, VREG(LNOTIFY_LPID), 0ULL);
 write_hvwc_reg(window, VREG(LNOTIFY_TID), 0ULL);
 write_hvwc_reg(window, VREG(LNOTIFY_SCOPE), 0ULL);
 write_hvwc_reg(window, VREG(NX_UTIL_ADDER), 0ULL);
}
