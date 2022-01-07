
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vas_window {int wcreds_max; } ;
struct vas_winctx {int pin_win; int fault_win; int data_stamp; int intr_disable; int notify_after_count; int notify_disable; int fifo_disable; int max_scope; int min_scope; int tc_mode; int dma_type; int pswid; int lnotify_tid; int lnotify_pid; int lnotify_lpid; int * rx_fifo; scalar_t__ user_win; int tx_word_mode; int rx_word_mode; scalar_t__ nx_win; int notify_early; int tx_wcred_mode; int rx_wcred_mode; int rej_no_credit; int wcreds_max; int rx_fifo_size; } ;
struct vas_rx_win_attr {int pin_win; int fault_win; int tc_mode; int pswid; int lnotify_tid; int lnotify_pid; int lnotify_lpid; int notify_early; int tx_wcred_mode; int rx_wcred_mode; int tx_win_ord_mode; int rx_win_ord_mode; int rej_no_credit; scalar_t__ user_win; scalar_t__ nx_win; int rx_fifo_size; int * rx_fifo; } ;


 int VAS_DMA_TYPE_INJECT ;
 int VAS_SCOPE_LOCAL ;
 int VAS_SCOPE_VECTORED_GROUP ;
 int WARN_ON_ONCE (int) ;
 int memset (struct vas_winctx*,int ,int) ;

__attribute__((used)) static void init_winctx_for_rxwin(struct vas_window *rxwin,
   struct vas_rx_win_attr *rxattr,
   struct vas_winctx *winctx)
{
 memset(winctx, 0, sizeof(struct vas_winctx));

 winctx->rx_fifo = rxattr->rx_fifo;
 winctx->rx_fifo_size = rxattr->rx_fifo_size;
 winctx->wcreds_max = rxwin->wcreds_max;
 winctx->pin_win = rxattr->pin_win;

 winctx->nx_win = rxattr->nx_win;
 winctx->fault_win = rxattr->fault_win;
 winctx->user_win = rxattr->user_win;
 winctx->rej_no_credit = rxattr->rej_no_credit;
 winctx->rx_word_mode = rxattr->rx_win_ord_mode;
 winctx->tx_word_mode = rxattr->tx_win_ord_mode;
 winctx->rx_wcred_mode = rxattr->rx_wcred_mode;
 winctx->tx_wcred_mode = rxattr->tx_wcred_mode;
 winctx->notify_early = rxattr->notify_early;

 if (winctx->nx_win) {
  winctx->data_stamp = 1;
  winctx->intr_disable = 1;
  winctx->pin_win = 1;

  WARN_ON_ONCE(winctx->fault_win);
  WARN_ON_ONCE(!winctx->rx_word_mode);
  WARN_ON_ONCE(!winctx->tx_word_mode);
  WARN_ON_ONCE(winctx->notify_after_count);
 } else if (winctx->fault_win) {
  winctx->notify_disable = 1;
 } else if (winctx->user_win) {
  winctx->fifo_disable = 1;
  winctx->intr_disable = 1;
  winctx->rx_fifo = ((void*)0);
 }

 winctx->lnotify_lpid = rxattr->lnotify_lpid;
 winctx->lnotify_pid = rxattr->lnotify_pid;
 winctx->lnotify_tid = rxattr->lnotify_tid;
 winctx->pswid = rxattr->pswid;
 winctx->dma_type = VAS_DMA_TYPE_INJECT;
 winctx->tc_mode = rxattr->tc_mode;

 winctx->min_scope = VAS_SCOPE_LOCAL;
 winctx->max_scope = VAS_SCOPE_VECTORED_GROUP;
}
