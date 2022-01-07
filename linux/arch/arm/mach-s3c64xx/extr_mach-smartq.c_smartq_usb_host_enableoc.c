
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3c2410_hcd_info {int dummy; } ;


 int IRQF_TRIGGER_FALLING ;
 int IRQF_TRIGGER_RISING ;
 int S3C64XX_GPL (int) ;
 int free_irq (int ,struct s3c2410_hcd_info*) ;
 int gpio_to_irq (int ) ;
 scalar_t__ machine_is_smartq5 () ;
 int pr_err (char*,int) ;
 int request_irq (int ,int ,int,char*,struct s3c2410_hcd_info*) ;
 int smartq_usb_host_ocirq ;

__attribute__((used)) static void smartq_usb_host_enableoc(struct s3c2410_hcd_info *info, int on)
{
 int ret;


 if (machine_is_smartq5())
  return;

 if (on) {
  ret = request_irq(gpio_to_irq(S3C64XX_GPL(10)),
      smartq_usb_host_ocirq,
      IRQF_TRIGGER_RISING | IRQF_TRIGGER_FALLING,
      "USB host overcurrent", info);
  if (ret != 0)
   pr_err("failed to request usb oc irq: %d\n", ret);
 } else {
  free_irq(gpio_to_irq(S3C64XX_GPL(10)), info);
 }
}
