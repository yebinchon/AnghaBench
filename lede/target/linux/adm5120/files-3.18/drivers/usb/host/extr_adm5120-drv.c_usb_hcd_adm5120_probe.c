
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int adm5120_hc_driver ;
 int admhc_adm5120_probe (int *,struct platform_device*) ;

__attribute__((used)) static int usb_hcd_adm5120_probe(struct platform_device *pdev)
{
 int ret;

 ret = admhc_adm5120_probe(&adm5120_hc_driver, pdev);

 return ret;
}
