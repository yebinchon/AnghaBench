
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int SD1_CD ;
 int free_irq (int ,void*) ;
 int gpio_to_irq (int ) ;

__attribute__((used)) static void mx27_3ds_sdhc1_exit(struct device *dev, void *data)
{
 free_irq(gpio_to_irq(SD1_CD), data);
}
