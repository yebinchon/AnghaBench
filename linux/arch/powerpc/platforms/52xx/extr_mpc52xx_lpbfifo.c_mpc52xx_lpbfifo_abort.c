
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mpc52xx_lpbfifo_request {int dummy; } ;
struct TYPE_2__ {int lock; struct mpc52xx_lpbfifo_request* req; scalar_t__ regs; int bcom_tx_task; int bcom_rx_task; } ;


 scalar_t__ LPBFIFO_REG_ENABLE ;
 int bcom_gen_bd_rx_reset (int ) ;
 int bcom_gen_bd_tx_reset (int ) ;
 TYPE_1__ lpbfifo ;
 int out_be32 (scalar_t__,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void mpc52xx_lpbfifo_abort(struct mpc52xx_lpbfifo_request *req)
{
 unsigned long flags;

 spin_lock_irqsave(&lpbfifo.lock, flags);
 if (lpbfifo.req == req) {

  bcom_gen_bd_rx_reset(lpbfifo.bcom_rx_task);
  bcom_gen_bd_tx_reset(lpbfifo.bcom_tx_task);
  out_be32(lpbfifo.regs + LPBFIFO_REG_ENABLE, 0x01010000);
  lpbfifo.req = ((void*)0);
 }
 spin_unlock_irqrestore(&lpbfifo.lock, flags);
}
