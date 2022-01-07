
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct neponset_drvdata {int base; int irq_base; int smc91x; int sa1111; } ;


 int IS_ERR (int ) ;
 int NEP_IRQ_NR ;
 int gpiod_remove_lookup_table (int *) ;
 int iounmap (int ) ;
 int irq_free_descs (int ,int ) ;
 int irq_set_chained_handler (int,int *) ;
 int kfree (struct neponset_drvdata*) ;
 int * nep ;
 int neponset_pcmcia_table ;
 int neponset_uart1_gpio_table ;
 int neponset_uart3_gpio_table ;
 int platform_device_unregister (int ) ;
 struct neponset_drvdata* platform_get_drvdata (struct platform_device*) ;
 int platform_get_irq (struct platform_device*,int ) ;

__attribute__((used)) static int neponset_remove(struct platform_device *dev)
{
 struct neponset_drvdata *d = platform_get_drvdata(dev);
 int irq = platform_get_irq(dev, 0);

 if (!IS_ERR(d->sa1111))
  platform_device_unregister(d->sa1111);
 if (!IS_ERR(d->smc91x))
  platform_device_unregister(d->smc91x);

 gpiod_remove_lookup_table(&neponset_pcmcia_table);
 gpiod_remove_lookup_table(&neponset_uart3_gpio_table);
 gpiod_remove_lookup_table(&neponset_uart1_gpio_table);

 irq_set_chained_handler(irq, ((void*)0));
 irq_free_descs(d->irq_base, NEP_IRQ_NR);
 nep = ((void*)0);
 iounmap(d->base);
 kfree(d);

 return 0;
}
