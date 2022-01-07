
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mpc512x_lpbfifo_request {int dummy; } ;
struct TYPE_2__ {int lock; } ;


 TYPE_1__ lpbfifo ;
 int mpc512x_lpbfifo_submit_locked (struct mpc512x_lpbfifo_request*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int mpc512x_lpbfifo_submit(struct mpc512x_lpbfifo_request *req)
{
 unsigned long flags;
 int ret = 0;

 spin_lock_irqsave(&lpbfifo.lock, flags);
 ret = mpc512x_lpbfifo_submit_locked(req);
 spin_unlock_irqrestore(&lpbfifo.lock, flags);

 return ret;
}
