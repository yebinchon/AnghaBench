
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mpc52xx_lpbfifo_request {int flags; } ;
struct TYPE_2__ {struct mpc52xx_lpbfifo_request* req; } ;


 int MPC52XX_LPBFIFO_FLAG_NO_DMA ;
 int MPC52XX_LPBFIFO_FLAG_WRITE ;
 TYPE_1__ lpbfifo ;
 int mpc52xx_lpbfifo_bcom_irq (int ,int *) ;
 int mpc52xx_lpbfifo_irq (int ,int *) ;

void mpc52xx_lpbfifo_poll(void)
{
 struct mpc52xx_lpbfifo_request *req = lpbfifo.req;
 int dma = !(req->flags & MPC52XX_LPBFIFO_FLAG_NO_DMA);
 int write = req->flags & MPC52XX_LPBFIFO_FLAG_WRITE;




 if (dma && write)
  mpc52xx_lpbfifo_irq(0, ((void*)0));
 else
  mpc52xx_lpbfifo_bcom_irq(0, ((void*)0));
}
