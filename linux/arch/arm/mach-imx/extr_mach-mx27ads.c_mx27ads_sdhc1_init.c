
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int irq_handler_t ;


 int IMX_GPIO_NR (int,int) ;
 int IRQF_TRIGGER_RISING ;
 int gpio_to_irq (int ) ;
 int request_irq (int ,int ,int ,char*,void*) ;

__attribute__((used)) static int mx27ads_sdhc1_init(struct device *dev, irq_handler_t detect_irq,
         void *data)
{
 return request_irq(gpio_to_irq(IMX_GPIO_NR(5, 21)), detect_irq,
      IRQF_TRIGGER_RISING, "sdhc1-card-detect", data);
}
