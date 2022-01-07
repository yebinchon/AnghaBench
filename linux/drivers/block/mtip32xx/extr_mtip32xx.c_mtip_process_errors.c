
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct driver_data {TYPE_1__* port; TYPE_2__* pdev; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int svc_wait; int flags; scalar_t__ mmio; } ;


 int MTIP_PF_EH_ACTIVE_BIT ;
 int PORT_IRQ_CONNECT ;
 int PORT_IRQ_HANDLED ;
 int PORT_IRQ_IF_ERR ;
 int PORT_IRQ_PHYRDY ;
 int PORT_IRQ_TF_ERR ;
 scalar_t__ PORT_SCR_ERR ;
 int dev_warn (int *,char*,...) ;
 scalar_t__ likely (int) ;
 scalar_t__ mtip_check_surprise_removal (TYPE_2__*) ;
 int set_bit (int ,int *) ;
 scalar_t__ unlikely (int) ;
 int wake_up_interruptible (int *) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static inline void mtip_process_errors(struct driver_data *dd, u32 port_stat)
{
 if (unlikely(port_stat & PORT_IRQ_CONNECT)) {
  dev_warn(&dd->pdev->dev,
   "Clearing PxSERR.DIAG.x\n");
  writel((1 << 26), dd->port->mmio + PORT_SCR_ERR);
 }

 if (unlikely(port_stat & PORT_IRQ_PHYRDY)) {
  dev_warn(&dd->pdev->dev,
   "Clearing PxSERR.DIAG.n\n");
  writel((1 << 16), dd->port->mmio + PORT_SCR_ERR);
 }

 if (unlikely(port_stat & ~PORT_IRQ_HANDLED)) {
  dev_warn(&dd->pdev->dev,
   "Port stat errors %x unhandled\n",
   (port_stat & ~PORT_IRQ_HANDLED));
  if (mtip_check_surprise_removal(dd->pdev))
   return;
 }
 if (likely(port_stat & (PORT_IRQ_TF_ERR | PORT_IRQ_IF_ERR))) {
  set_bit(MTIP_PF_EH_ACTIVE_BIT, &dd->port->flags);
  wake_up_interruptible(&dd->port->svc_wait);
 }
}
