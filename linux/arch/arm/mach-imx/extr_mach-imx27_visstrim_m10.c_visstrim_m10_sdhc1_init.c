
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int irq_handler_t ;


 int IRQF_TRIGGER_FALLING ;
 int SDHC1_IRQ_GPIO ;
 int gpio_to_irq (int ) ;
 int request_irq (int ,int ,int ,char*,void*) ;

__attribute__((used)) static int visstrim_m10_sdhc1_init(struct device *dev,
  irq_handler_t detect_irq, void *data)
{
 int ret;

 ret = request_irq(gpio_to_irq(SDHC1_IRQ_GPIO), detect_irq,
     IRQF_TRIGGER_FALLING, "mmc-detect", data);
 return ret;
}
