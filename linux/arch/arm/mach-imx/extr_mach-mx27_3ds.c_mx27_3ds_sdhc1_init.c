
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int irq_handler_t ;


 int IRQF_TRIGGER_FALLING ;
 int IRQF_TRIGGER_RISING ;
 int SD1_CD ;
 int gpio_to_irq (int ) ;
 int request_irq (int ,int ,int,char*,void*) ;

__attribute__((used)) static int mx27_3ds_sdhc1_init(struct device *dev, irq_handler_t detect_irq,
    void *data)
{
 return request_irq(gpio_to_irq(SD1_CD), detect_irq,
 IRQF_TRIGGER_FALLING | IRQF_TRIGGER_RISING, "sdhc1-card-detect", data);
}
