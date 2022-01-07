
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb2_clock_sel_priv {int hw; } ;
struct device {int of_node; } ;
struct platform_device {struct device dev; } ;


 int clk_hw_unregister (int *) ;
 int of_clk_del_provider (int ) ;
 struct usb2_clock_sel_priv* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (struct device*) ;
 int pm_runtime_put (struct device*) ;

__attribute__((used)) static int rcar_usb2_clock_sel_remove(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct usb2_clock_sel_priv *priv = platform_get_drvdata(pdev);

 of_clk_del_provider(dev->of_node);
 clk_hw_unregister(&priv->hw);
 pm_runtime_put(dev);
 pm_runtime_disable(dev);

 return 0;
}
