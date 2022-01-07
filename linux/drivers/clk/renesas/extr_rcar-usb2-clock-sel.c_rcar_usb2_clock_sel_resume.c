
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb2_clock_sel_priv {int dummy; } ;
struct device {int dummy; } ;


 struct usb2_clock_sel_priv* dev_get_drvdata (struct device*) ;
 int pm_runtime_get_sync (struct device*) ;
 int usb2_clock_sel_enable_extal_only (struct usb2_clock_sel_priv*) ;

__attribute__((used)) static int rcar_usb2_clock_sel_resume(struct device *dev)
{
 struct usb2_clock_sel_priv *priv = dev_get_drvdata(dev);

 pm_runtime_get_sync(dev);
 usb2_clock_sel_enable_extal_only(priv);

 return 0;
}
