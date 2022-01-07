
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct driver_data {int * port; TYPE_1__* pdev; scalar_t__ mmio; int sr; } ;
struct TYPE_2__ {int irq; } ;


 scalar_t__ HOST_CTL ;
 int HOST_IRQ_EN ;
 int free_irq (int ,struct driver_data*) ;
 int irq_set_affinity_hint (int ,int *) ;
 int kfree (int *) ;
 int msleep (int) ;
 int mtip_deinit_port (int *) ;
 int mtip_dma_free (struct driver_data*) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int mtip_hw_exit(struct driver_data *dd)
{
 if (!dd->sr) {

  mtip_deinit_port(dd->port);


  writel(readl(dd->mmio + HOST_CTL) & ~HOST_IRQ_EN,
    dd->mmio + HOST_CTL);
 }


 irq_set_affinity_hint(dd->pdev->irq, ((void*)0));
 free_irq(dd->pdev->irq, dd);
 msleep(1000);


 mtip_dma_free(dd);


 kfree(dd->port);
 dd->port = ((void*)0);

 return 0;
}
