
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3c2410_hcd_info {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int S3C2410_GPG (int) ;
 scalar_t__ gpio_get_value (int ) ;
 int pr_debug (char*) ;
 int s3c2410_usb_report_oc (struct s3c2410_hcd_info*,int) ;

__attribute__((used)) static irqreturn_t
usb_simtec_ocirq(int irq, void *pw)
{
 struct s3c2410_hcd_info *info = pw;

 if (gpio_get_value(S3C2410_GPG(10)) == 0) {
  pr_debug("usb_simtec: over-current irq (oc detected)\n");
  s3c2410_usb_report_oc(info, 3);
 } else {
  pr_debug("usb_simtec: over-current irq (oc cleared)\n");
  s3c2410_usb_report_oc(info, 0);
 }

 return IRQ_HANDLED;
}
