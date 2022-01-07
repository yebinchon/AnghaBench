
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct mpc512x_lpbfifo_request {scalar_t__ dir; int (* callback ) (struct mpc512x_lpbfifo_request*) ;} ;
struct device {int dummy; } ;
typedef int irqreturn_t ;
struct TYPE_4__ {int wait_lpbfifo_irq; int lock; struct mpc512x_lpbfifo_request* req; scalar_t__ wait_lpbfifo_callback; TYPE_1__* regs; } ;
struct TYPE_3__ {int status; int enable; } ;


 int IRQ_HANDLED ;
 scalar_t__ MPC512X_LPBFIFO_REQ_DIR_READ ;
 int MPC512X_SCLPC_FIFO_RESET ;
 int MPC512X_SCLPC_RESET ;
 int MPC512X_SCLPC_SUCCESS ;
 int dev_err (struct device*,char*) ;
 int in_be32 (int *) ;
 TYPE_2__ lpbfifo ;
 int out_be32 (int *,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct mpc512x_lpbfifo_request*) ;

__attribute__((used)) static irqreturn_t mpc512x_lpbfifo_irq(int irq, void *param)
{
 struct device *dev = (struct device *)param;
 struct mpc512x_lpbfifo_request *req = ((void*)0);
 unsigned long flags;
 u32 status;

 spin_lock_irqsave(&lpbfifo.lock, flags);

 if (!lpbfifo.regs)
  goto end;

 req = lpbfifo.req;
 if (!req || req->dir == MPC512X_LPBFIFO_REQ_DIR_READ) {
  dev_err(dev, "bogus LPBFIFO IRQ\n");
  goto end;
 }

 status = in_be32(&lpbfifo.regs->status);
 if (status != MPC512X_SCLPC_SUCCESS) {
  dev_err(dev, "DMA transfer from RAM to peripheral failed\n");
  out_be32(&lpbfifo.regs->enable,
    MPC512X_SCLPC_RESET | MPC512X_SCLPC_FIFO_RESET);
  goto end;
 }

 out_be32(&lpbfifo.regs->status, MPC512X_SCLPC_SUCCESS);

 lpbfifo.wait_lpbfifo_irq = 0;

 if (lpbfifo.wait_lpbfifo_callback)
  goto end;


 lpbfifo.req = ((void*)0);

 spin_unlock_irqrestore(&lpbfifo.lock, flags);

 if (req->callback)
  req->callback(req);

 return IRQ_HANDLED;

 end:
 spin_unlock_irqrestore(&lpbfifo.lock, flags);
 return IRQ_HANDLED;
}
