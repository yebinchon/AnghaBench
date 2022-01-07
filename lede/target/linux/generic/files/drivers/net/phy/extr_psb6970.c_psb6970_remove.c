
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct psb6970_priv {int dev; } ;
struct TYPE_2__ {scalar_t__ addr; } ;
struct phy_device {TYPE_1__ mdio; struct psb6970_priv* priv; } ;


 int kfree (struct psb6970_priv*) ;
 int unregister_switch (int *) ;

__attribute__((used)) static void psb6970_remove(struct phy_device *pdev)
{
 struct psb6970_priv *priv = pdev->priv;

 if (!priv)
  return;

 if (pdev->mdio.addr == 0)
  unregister_switch(&priv->dev);
 kfree(priv);
}
