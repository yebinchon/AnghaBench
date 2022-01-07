
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int irq_handler_t ;


 int ARRAY_SIZE (int ) ;
 int IOMUX_TO_GPIO (int ) ;
 int IRQF_TRIGGER_FALLING ;
 int IRQF_TRIGGER_RISING ;
 int MX31_PIN_GPIO3_1 ;
 int gpio_free_array (int ,int ) ;
 int gpio_request_array (int ,int ) ;
 int gpio_to_irq (int ) ;
 int mx31_3ds_sdhc1_gpios ;
 int pr_warn (char*) ;
 int request_irq (int ,int ,int,char*,void*) ;

__attribute__((used)) static int mx31_3ds_sdhc1_init(struct device *dev,
          irq_handler_t detect_irq,
          void *data)
{
 int ret;

 ret = gpio_request_array(mx31_3ds_sdhc1_gpios,
     ARRAY_SIZE(mx31_3ds_sdhc1_gpios));
 if (ret) {
  pr_warn("Unable to request the SD/MMC GPIOs.\n");
  return ret;
 }

 ret = request_irq(gpio_to_irq(IOMUX_TO_GPIO(MX31_PIN_GPIO3_1)),
     detect_irq,
     IRQF_TRIGGER_FALLING | IRQF_TRIGGER_RISING,
     "sdhc1-detect", data);
 if (ret) {
  pr_warn("Unable to request the SD/MMC card-detect IRQ.\n");
  goto gpio_free;
 }

 return 0;

gpio_free:
 gpio_free_array(mx31_3ds_sdhc1_gpios,
   ARRAY_SIZE(mx31_3ds_sdhc1_gpios));
 return ret;
}
