
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mpc512x_lpbfifo_request {scalar_t__ dir; int (* callback ) (struct mpc512x_lpbfifo_request*) ;int size; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
struct TYPE_6__ {int wait_lpbfifo_callback; int lock; struct mpc512x_lpbfifo_request* req; int wait_lpbfifo_irq; int ram_bus_addr; TYPE_2__* chan; int regs; } ;
struct TYPE_5__ {TYPE_1__* device; } ;
struct TYPE_4__ {int dev; } ;


 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 scalar_t__ MPC512X_LPBFIFO_REQ_DIR_WRITE ;
 int dma_unmap_single (int ,int ,int ,int) ;
 TYPE_3__ lpbfifo ;
 int pr_err (char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct mpc512x_lpbfifo_request*) ;

__attribute__((used)) static void mpc512x_lpbfifo_callback(void *param)
{
 unsigned long flags;
 struct mpc512x_lpbfifo_request *req = ((void*)0);
 enum dma_data_direction dir;

 spin_lock_irqsave(&lpbfifo.lock, flags);

 if (!lpbfifo.regs) {
  spin_unlock_irqrestore(&lpbfifo.lock, flags);
  return;
 }

 req = lpbfifo.req;
 if (!req) {
  pr_err("bogus LPBFIFO callback\n");
  spin_unlock_irqrestore(&lpbfifo.lock, flags);
  return;
 }


 if (req->dir == MPC512X_LPBFIFO_REQ_DIR_WRITE)
  dir = DMA_TO_DEVICE;
 else
  dir = DMA_FROM_DEVICE;
 dma_unmap_single(lpbfifo.chan->device->dev,
   lpbfifo.ram_bus_addr, req->size, dir);

 lpbfifo.wait_lpbfifo_callback = 0;

 if (!lpbfifo.wait_lpbfifo_irq) {

  lpbfifo.req = ((void*)0);

  spin_unlock_irqrestore(&lpbfifo.lock, flags);

  if (req->callback)
   req->callback(req);
 } else {
  spin_unlock_irqrestore(&lpbfifo.lock, flags);
 }
}
