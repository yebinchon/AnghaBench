
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vas_window {TYPE_1__* rxwin; int wcreds_max; } ;
struct vas_winctx {int intr_disable; int data_stamp; scalar_t__ pswid; int max_scope; int min_scope; int tc_mode; int dma_type; int rx_win_id; int pidr; int lpid; scalar_t__ nx_win; int rsvd_txbuf_count; int tx_word_mode; int rx_word_mode; int tx_wcred_mode; int rx_wcred_mode; int rsvd_txbuf_enable; int rej_no_credit; int pin_win; int user_win; int wcreds_max; } ;
struct vas_tx_win_attr {int tc_mode; int pidr; int lpid; int rsvd_txbuf_count; int tx_win_ord_mode; int rx_win_ord_mode; int tx_wcred_mode; int rx_wcred_mode; int rsvd_txbuf_enable; int rej_no_credit; int pin_win; int user_win; } ;
struct TYPE_2__ {int winid; scalar_t__ nx_win; } ;


 int VAS_DMA_TYPE_INJECT ;
 int VAS_SCOPE_LOCAL ;
 int VAS_SCOPE_VECTORED_GROUP ;
 int memset (struct vas_winctx*,int ,int) ;

__attribute__((used)) static void init_winctx_for_txwin(struct vas_window *txwin,
   struct vas_tx_win_attr *txattr,
   struct vas_winctx *winctx)
{
 memset(winctx, 0, sizeof(struct vas_winctx));

 winctx->wcreds_max = txwin->wcreds_max;

 winctx->user_win = txattr->user_win;
 winctx->nx_win = txwin->rxwin->nx_win;
 winctx->pin_win = txattr->pin_win;
 winctx->rej_no_credit = txattr->rej_no_credit;
 winctx->rsvd_txbuf_enable = txattr->rsvd_txbuf_enable;

 winctx->rx_wcred_mode = txattr->rx_wcred_mode;
 winctx->tx_wcred_mode = txattr->tx_wcred_mode;
 winctx->rx_word_mode = txattr->rx_win_ord_mode;
 winctx->tx_word_mode = txattr->tx_win_ord_mode;
 winctx->rsvd_txbuf_count = txattr->rsvd_txbuf_count;

 winctx->intr_disable = 1;
 if (winctx->nx_win)
  winctx->data_stamp = 1;

 winctx->lpid = txattr->lpid;
 winctx->pidr = txattr->pidr;
 winctx->rx_win_id = txwin->rxwin->winid;

 winctx->dma_type = VAS_DMA_TYPE_INJECT;
 winctx->tc_mode = txattr->tc_mode;
 winctx->min_scope = VAS_SCOPE_LOCAL;
 winctx->max_scope = VAS_SCOPE_VECTORED_GROUP;

 winctx->pswid = 0;
}
