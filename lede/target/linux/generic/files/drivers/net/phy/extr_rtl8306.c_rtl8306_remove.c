
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl_priv {int dev; } ;
struct phy_device {struct rtl_priv* priv; } ;


 int kfree (struct rtl_priv*) ;
 int unregister_switch (int *) ;

__attribute__((used)) static void
rtl8306_remove(struct phy_device *pdev)
{
 struct rtl_priv *priv = pdev->priv;
 unregister_switch(&priv->dev);
 kfree(priv);
}
