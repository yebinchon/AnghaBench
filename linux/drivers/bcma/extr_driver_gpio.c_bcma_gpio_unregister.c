
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcma_drv_cc {int gpio; } ;


 int bcma_gpio_irq_exit (struct bcma_drv_cc*) ;
 int gpiochip_remove (int *) ;

int bcma_gpio_unregister(struct bcma_drv_cc *cc)
{
 bcma_gpio_irq_exit(cc);
 gpiochip_remove(&cc->gpio);
 return 0;
}
