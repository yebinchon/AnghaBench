
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int TOSA_GPIO_nSD_INT ;
 int gpio_free (int ) ;

__attribute__((used)) static void tosa_mci_exit(struct device *dev, void *data)
{
 gpio_free(TOSA_GPIO_nSD_INT);
}
