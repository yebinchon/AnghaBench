
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int SDHC2_CD ;
 int SDHC2_WP ;
 int free_irq (int ,void*) ;
 int gpio_free (int ) ;
 int gpio_to_irq (int ) ;

__attribute__((used)) static void devboard_sdhc2_exit(struct device *dev, void *data)
{
 free_irq(gpio_to_irq(SDHC2_CD), data);
 gpio_free(SDHC2_WP);
 gpio_free(SDHC2_CD);
}
