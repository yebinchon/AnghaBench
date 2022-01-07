
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int id; } ;


 int MXC_EHCI_INTERFACE_DIFF_UNI ;
 int mx31_initialize_usb_hw (int ,int ) ;

__attribute__((used)) static int pcm037_otg_init(struct platform_device *pdev)
{
 return mx31_initialize_usb_hw(pdev->id, MXC_EHCI_INTERFACE_DIFF_UNI);
}
