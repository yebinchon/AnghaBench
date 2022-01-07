
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int EINVAL ;
 int USB_PHY_TYPE_DEVICE ;
 int s3c_usb_otgphy_init (struct platform_device*) ;

int s5p_usb_phy_init(struct platform_device *pdev, int type)
{
 if (type == USB_PHY_TYPE_DEVICE)
  return s3c_usb_otgphy_init(pdev);

 return -EINVAL;
}
