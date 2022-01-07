
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int IOMUX_TO_GPIO (int ) ;
 int MX31_PIN_GPIO3_1 ;
 int free_irq (int ,void*) ;
 int gpio_free_array (int ,int ) ;
 int gpio_to_irq (int ) ;
 int mx31_3ds_sdhc1_gpios ;

__attribute__((used)) static void mx31_3ds_sdhc1_exit(struct device *dev, void *data)
{
 free_irq(gpio_to_irq(IOMUX_TO_GPIO(MX31_PIN_GPIO3_1)), data);
 gpio_free_array(mx31_3ds_sdhc1_gpios,
    ARRAY_SIZE(mx31_3ds_sdhc1_gpios));
}
