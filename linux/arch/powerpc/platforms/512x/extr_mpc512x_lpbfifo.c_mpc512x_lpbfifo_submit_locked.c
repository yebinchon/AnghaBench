
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mpc512x_lpbfifo_request {int dummy; } ;
struct TYPE_2__ {int wait_lpbfifo_irq; int wait_lpbfifo_callback; struct mpc512x_lpbfifo_request* req; int regs; } ;


 int EBUSY ;
 int ENODEV ;
 TYPE_1__ lpbfifo ;
 int mpc512x_lpbfifo_kick () ;

__attribute__((used)) static int mpc512x_lpbfifo_submit_locked(struct mpc512x_lpbfifo_request *req)
{
 int ret = 0;

 if (!lpbfifo.regs)
  return -ENODEV;


 if (lpbfifo.req)
  return -EBUSY;

 lpbfifo.wait_lpbfifo_irq = 1;
 lpbfifo.wait_lpbfifo_callback = 1;
 lpbfifo.req = req;

 ret = mpc512x_lpbfifo_kick();
 if (ret != 0)
  lpbfifo.req = ((void*)0);

 return ret;
}
