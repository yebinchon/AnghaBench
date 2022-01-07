
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct locomo {scalar_t__ irq; int base; int dev; } ;


 scalar_t__ NO_IRQ ;
 int device_for_each_child (int ,int *,int ) ;
 int iounmap (int ) ;
 int irq_set_chained_handler_and_data (scalar_t__,int *,int *) ;
 int kfree (struct locomo*) ;
 int locomo_remove_child ;

__attribute__((used)) static void __locomo_remove(struct locomo *lchip)
{
 device_for_each_child(lchip->dev, ((void*)0), locomo_remove_child);

 if (lchip->irq != NO_IRQ) {
  irq_set_chained_handler_and_data(lchip->irq, ((void*)0), ((void*)0));
 }

 iounmap(lchip->base);
 kfree(lchip);
}
