
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int IMX_GPIO_NR (int,int) ;
 int free_irq (int ,void*) ;
 int gpio_to_irq (int ) ;

__attribute__((used)) static void mx27ads_sdhc1_exit(struct device *dev, void *data)
{
 free_irq(gpio_to_irq(IMX_GPIO_NR(5, 21)), data);
}
