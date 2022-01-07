
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int USBHS_GADGET ;

__attribute__((used)) static int usbhs0_get_id(struct platform_device *pdev)
{
 return USBHS_GADGET;
}
