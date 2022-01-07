
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vas_window {int dummy; } ;
struct vas_winctx {int dummy; } ;


 int TX_RSVD_BUF_COUNT ;
 int VREG (int ) ;
 int write_hvwc_reg (struct vas_window*,int ,unsigned long long) ;

__attribute__((used)) static void init_rsvd_tx_buf_count(struct vas_window *txwin,
    struct vas_winctx *winctx)
{
 write_hvwc_reg(txwin, VREG(TX_RSVD_BUF_COUNT), 0ULL);
}
