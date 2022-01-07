
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mpc52xx_lpbfifo_request {scalar_t__ defer_xfer_start; } ;
struct TYPE_2__ {int lock; scalar_t__ regs; struct mpc52xx_lpbfifo_request* req; } ;


 int EBUSY ;
 int ENODEV ;
 scalar_t__ LPBFIFO_REG_PACKET_SIZE ;
 TYPE_1__ lpbfifo ;
 int out_8 (scalar_t__,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int mpc52xx_lpbfifo_start_xfer(struct mpc52xx_lpbfifo_request *req)
{
 unsigned long flags;

 if (!lpbfifo.regs)
  return -ENODEV;

 spin_lock_irqsave(&lpbfifo.lock, flags);





 if (lpbfifo.req && !lpbfifo.req->defer_xfer_start) {
  spin_unlock_irqrestore(&lpbfifo.lock, flags);
  return -EBUSY;
 }





 if (lpbfifo.req && lpbfifo.req == req &&
     lpbfifo.req->defer_xfer_start) {
  out_8(lpbfifo.regs + LPBFIFO_REG_PACKET_SIZE, 0x01);
 }

 spin_unlock_irqrestore(&lpbfifo.lock, flags);
 return 0;
}
