
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int IOMUX_TO_GPIO (int ) ;
 int MX31_PIN_DCD_DCE1 ;
 int free_irq (int ,void*) ;
 int gpio_det ;
 int gpio_free (int ) ;
 int gpio_to_irq (int ) ;
 int gpio_wp ;

__attribute__((used)) static void mxc_mmc1_exit(struct device *dev, void *data)
{
 gpio_free(gpio_det);
 gpio_free(gpio_wp);
 free_irq(gpio_to_irq(IOMUX_TO_GPIO(MX31_PIN_DCD_DCE1)), data);
}
