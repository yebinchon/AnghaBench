
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {struct net_device* attached_dev; } ;
struct net_device {int priv_flags; int features; int * eth_mangle_tx; int * eth_mangle_rx; int * phy_ptr; } ;
struct mvswitch_priv {int orig_features; } ;


 int IFF_NO_IP_ALIGN ;
 struct mvswitch_priv* to_mvsw (struct phy_device*) ;

__attribute__((used)) static void
mvswitch_detach(struct phy_device *pdev)
{
 struct mvswitch_priv *priv = to_mvsw(pdev);
 struct net_device *dev = pdev->attached_dev;

 if (!dev)
  return;

 dev->phy_ptr = ((void*)0);
 dev->eth_mangle_rx = ((void*)0);
 dev->eth_mangle_tx = ((void*)0);
 dev->features = priv->orig_features;
 dev->priv_flags &= ~IFF_NO_IP_ALIGN;
}
