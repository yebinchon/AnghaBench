
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {struct net_device* attached_dev; } ;
struct net_device {int * eth_mangle_tx; int * eth_mangle_rx; int priv_flags; int * phy_ptr; } ;


 int IFF_NO_IP_ALIGN ;

__attribute__((used)) static void
ar8xxx_phy_detach(struct phy_device *phydev)
{
 struct net_device *dev = phydev->attached_dev;

 if (!dev)
  return;

 dev->phy_ptr = ((void*)0);
 dev->priv_flags &= ~IFF_NO_IP_ALIGN;
 dev->eth_mangle_rx = ((void*)0);
 dev->eth_mangle_tx = ((void*)0);
}
