
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int S3C64XX_OTHERS ;
 int S3C64XX_OTHERS_USBMASK ;
 int S3C_PHYPWR ;
 int S3C_PHYPWR_ANALOG_POWERDOWN ;
 int S3C_PHYPWR_OTG_DISABLE ;
 int readl (int ) ;
 int writel (int,int ) ;

__attribute__((used)) static int s3c_usb_otgphy_exit(struct platform_device *pdev)
{
 writel((readl(S3C_PHYPWR) | S3C_PHYPWR_ANALOG_POWERDOWN |
    S3C_PHYPWR_OTG_DISABLE), S3C_PHYPWR);

 writel(readl(S3C64XX_OTHERS) & ~S3C64XX_OTHERS_USBMASK, S3C64XX_OTHERS);

 return 0;
}
