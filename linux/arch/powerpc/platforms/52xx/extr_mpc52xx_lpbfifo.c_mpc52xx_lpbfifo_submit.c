
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mpc52xx_lpbfifo_request {scalar_t__ pos; scalar_t__ buffer_not_done_cnt; scalar_t__ irq_ticks; scalar_t__ irq_count; } ;
struct TYPE_2__ {int lock; struct mpc52xx_lpbfifo_request* req; int regs; } ;


 int EBUSY ;
 int ENODEV ;
 TYPE_1__ lpbfifo ;
 int mpc52xx_lpbfifo_kick (struct mpc52xx_lpbfifo_request*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int mpc52xx_lpbfifo_submit(struct mpc52xx_lpbfifo_request *req)
{
 unsigned long flags;

 if (!lpbfifo.regs)
  return -ENODEV;

 spin_lock_irqsave(&lpbfifo.lock, flags);


 if (lpbfifo.req) {
  spin_unlock_irqrestore(&lpbfifo.lock, flags);
  return -EBUSY;
 }


 lpbfifo.req = req;
 req->irq_count = 0;
 req->irq_ticks = 0;
 req->buffer_not_done_cnt = 0;
 req->pos = 0;

 mpc52xx_lpbfifo_kick(req);
 spin_unlock_irqrestore(&lpbfifo.lock, flags);
 return 0;
}
