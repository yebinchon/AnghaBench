
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long u64 ;
struct vas_window {int dummy; } ;
struct vas_winctx {int lpid; int pidr; int irq_port; int pswid; int data_stamp; int dma_type; int fifo_disable; int wcreds_max; int rx_fifo_size; int rx_win_id; int notify_disable; int intr_disable; int notify_early; int notify_os_intr_reg; int lnotify_pid; int lnotify_lpid; int lnotify_tid; int min_scope; int max_scope; int rej_no_credit; int pin_win; int tx_wcred_mode; int rx_wcred_mode; int tx_word_mode; int rx_word_mode; int fault_win; int nx_win; int rx_fifo; int user_win; } ;


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
 unsigned long long SET_FIELD (int ,unsigned long long,int) ;
 int SPARE1 ;
 int SPARE2 ;
 int SPARE3 ;
 int SPARE4 ;
 int SPARE5 ;
 int SPARE6 ;
 int TX_WCRED ;
 int TX_WCRED_ADDER ;
 int VAS_FAULT_TX_WIN ;
 int VAS_HV_INTR_SRC_RA ;
 int VAS_INTR_DISABLE ;
 int VAS_LDATA_STAMP ;
 int VAS_LDMA_FIFO_DISABLE ;
 int VAS_LDMA_TYPE ;
 int VAS_LFIFO_SIZE ;
 int VAS_LNOTIFY_LPID ;
 int VAS_LNOTIFY_MAX_SCOPE ;
 int VAS_LNOTIFY_MIN_SCOPE ;
 int VAS_LNOTIFY_PID ;
 int VAS_LNOTIFY_TID ;
 int VAS_LPID ;
 int VAS_LRX_WCRED ;
 int VAS_LRX_WIN_ID ;
 int VAS_NOTIFY_DISABLE ;
 int VAS_NOTIFY_EARLY ;
 int VAS_NOTIFY_OSU_INTR ;
 int VAS_PAGE_MIGRATION_SELECT ;
 int VAS_PID_ID ;
 int VAS_PSWID_EA_HANDLE ;
 int VAS_PUSH_TO_MEM ;
 int VAS_TX_WCRED ;
 int VAS_WINCTL_FAULT_WIN ;
 int VAS_WINCTL_NX_WIN ;
 int VAS_WINCTL_OPEN ;
 int VAS_WINCTL_PIN ;
 int VAS_WINCTL_REJ_NO_CREDIT ;
 int VAS_WINCTL_RX_WCRED_MODE ;
 int VAS_WINCTL_RX_WORD_MODE ;
 int VAS_WINCTL_TX_WCRED_MODE ;
 int VAS_WINCTL_TX_WORD_MODE ;
 int VREG (int ) ;
 int WINCTL ;
 int WIN_CTX_CACHING_CTL ;
 int WIN_STATUS ;
 unsigned long long __pa (int ) ;
 int ilog2 (int) ;
 int init_rsvd_tx_buf_count (struct vas_window*,struct vas_winctx*) ;
 int init_xlate_regs (struct vas_window*,int ) ;
 int reset_window_regs (struct vas_window*) ;
 int write_hvwc_reg (struct vas_window*,int ,unsigned long long) ;

int init_winctx_regs(struct vas_window *window, struct vas_winctx *winctx)
{
 u64 val;
 int fifo_size;

 reset_window_regs(window);

 val = 0ULL;
 val = SET_FIELD(VAS_LPID, val, winctx->lpid);
 write_hvwc_reg(window, VREG(LPID), val);

 val = 0ULL;
 val = SET_FIELD(VAS_PID_ID, val, winctx->pidr);
 write_hvwc_reg(window, VREG(PID), val);

 init_xlate_regs(window, winctx->user_win);

 val = 0ULL;
 val = SET_FIELD(VAS_FAULT_TX_WIN, val, 0);
 write_hvwc_reg(window, VREG(FAULT_TX_WIN), val);


 write_hvwc_reg(window, VREG(OSU_INTR_SRC_RA), 0ULL);

 val = 0ULL;
 val = SET_FIELD(VAS_HV_INTR_SRC_RA, val, winctx->irq_port);
 write_hvwc_reg(window, VREG(HV_INTR_SRC_RA), val);

 val = 0ULL;
 val = SET_FIELD(VAS_PSWID_EA_HANDLE, val, winctx->pswid);
 write_hvwc_reg(window, VREG(PSWID), val);

 write_hvwc_reg(window, VREG(SPARE1), 0ULL);
 write_hvwc_reg(window, VREG(SPARE2), 0ULL);
 write_hvwc_reg(window, VREG(SPARE3), 0ULL);
 val = __pa(winctx->rx_fifo);
 val = SET_FIELD(VAS_PAGE_MIGRATION_SELECT, val, 0);
 write_hvwc_reg(window, VREG(LFIFO_BAR), val);

 val = 0ULL;
 val = SET_FIELD(VAS_LDATA_STAMP, val, winctx->data_stamp);
 write_hvwc_reg(window, VREG(LDATA_STAMP_CTL), val);

 val = 0ULL;
 val = SET_FIELD(VAS_LDMA_TYPE, val, winctx->dma_type);
 val = SET_FIELD(VAS_LDMA_FIFO_DISABLE, val, winctx->fifo_disable);
 write_hvwc_reg(window, VREG(LDMA_CACHE_CTL), val);

 write_hvwc_reg(window, VREG(LRFIFO_PUSH), 0ULL);
 write_hvwc_reg(window, VREG(CURR_MSG_COUNT), 0ULL);
 write_hvwc_reg(window, VREG(LNOTIFY_AFTER_COUNT), 0ULL);

 val = 0ULL;
 val = SET_FIELD(VAS_LRX_WCRED, val, winctx->wcreds_max);
 write_hvwc_reg(window, VREG(LRX_WCRED), val);

 val = 0ULL;
 val = SET_FIELD(VAS_TX_WCRED, val, winctx->wcreds_max);
 write_hvwc_reg(window, VREG(TX_WCRED), val);

 write_hvwc_reg(window, VREG(LRX_WCRED_ADDER), 0ULL);
 write_hvwc_reg(window, VREG(TX_WCRED_ADDER), 0ULL);

 fifo_size = winctx->rx_fifo_size / 1024;

 val = 0ULL;
 val = SET_FIELD(VAS_LFIFO_SIZE, val, ilog2(fifo_size));
 write_hvwc_reg(window, VREG(LFIFO_SIZE), val);






 write_hvwc_reg(window, VREG(WIN_STATUS), 0ULL);

 init_rsvd_tx_buf_count(window, winctx);


 val = 0ULL;
 val = SET_FIELD(VAS_LRX_WIN_ID, val, winctx->rx_win_id);
 write_hvwc_reg(window, VREG(LRFIFO_WIN_PTR), val);

 write_hvwc_reg(window, VREG(SPARE4), 0ULL);

 val = 0ULL;
 val = SET_FIELD(VAS_NOTIFY_DISABLE, val, winctx->notify_disable);
 val = SET_FIELD(VAS_INTR_DISABLE, val, winctx->intr_disable);
 val = SET_FIELD(VAS_NOTIFY_EARLY, val, winctx->notify_early);
 val = SET_FIELD(VAS_NOTIFY_OSU_INTR, val, winctx->notify_os_intr_reg);
 write_hvwc_reg(window, VREG(LNOTIFY_CTL), val);

 val = 0ULL;
 val = SET_FIELD(VAS_LNOTIFY_PID, val, winctx->lnotify_pid);
 write_hvwc_reg(window, VREG(LNOTIFY_PID), val);

 val = 0ULL;
 val = SET_FIELD(VAS_LNOTIFY_LPID, val, winctx->lnotify_lpid);
 write_hvwc_reg(window, VREG(LNOTIFY_LPID), val);

 val = 0ULL;
 val = SET_FIELD(VAS_LNOTIFY_TID, val, winctx->lnotify_tid);
 write_hvwc_reg(window, VREG(LNOTIFY_TID), val);

 val = 0ULL;
 val = SET_FIELD(VAS_LNOTIFY_MIN_SCOPE, val, winctx->min_scope);
 val = SET_FIELD(VAS_LNOTIFY_MAX_SCOPE, val, winctx->max_scope);
 write_hvwc_reg(window, VREG(LNOTIFY_SCOPE), val);



 write_hvwc_reg(window, VREG(SPARE5), 0ULL);
 write_hvwc_reg(window, VREG(NX_UTIL_ADDER), 0ULL);
 write_hvwc_reg(window, VREG(SPARE6), 0ULL);


 val = 0ULL;
 val = SET_FIELD(VAS_PUSH_TO_MEM, val, 1);
 write_hvwc_reg(window, VREG(WIN_CTX_CACHING_CTL), val);


 val = 0ULL;
 val = SET_FIELD(VAS_WINCTL_REJ_NO_CREDIT, val, winctx->rej_no_credit);
 val = SET_FIELD(VAS_WINCTL_PIN, val, winctx->pin_win);
 val = SET_FIELD(VAS_WINCTL_TX_WCRED_MODE, val, winctx->tx_wcred_mode);
 val = SET_FIELD(VAS_WINCTL_RX_WCRED_MODE, val, winctx->rx_wcred_mode);
 val = SET_FIELD(VAS_WINCTL_TX_WORD_MODE, val, winctx->tx_word_mode);
 val = SET_FIELD(VAS_WINCTL_RX_WORD_MODE, val, winctx->rx_word_mode);
 val = SET_FIELD(VAS_WINCTL_FAULT_WIN, val, winctx->fault_win);
 val = SET_FIELD(VAS_WINCTL_NX_WIN, val, winctx->nx_win);
 val = SET_FIELD(VAS_WINCTL_OPEN, val, 1);
 write_hvwc_reg(window, VREG(WINCTL), val);

 return 0;
}
