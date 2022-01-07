
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int dummy; } ;
struct platform_device {int dummy; } ;


 int admhc_adm5120_remove (struct usb_hcd*,struct platform_device*) ;
 struct usb_hcd* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int usb_hcd_adm5120_remove(struct platform_device *pdev)
{
 struct usb_hcd *hcd = platform_get_drvdata(pdev);

 admhc_adm5120_remove(hcd, pdev);

 return 0;
}
