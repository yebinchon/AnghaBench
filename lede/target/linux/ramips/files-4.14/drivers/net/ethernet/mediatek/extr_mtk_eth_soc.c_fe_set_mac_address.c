
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dev_addr; } ;
struct fe_priv {TYPE_1__* soc; } ;
struct TYPE_2__ {int (* set_mac ) (struct fe_priv*,int ) ;} ;


 int eth_mac_addr (struct net_device*,void*) ;
 int fe_hw_set_macaddr (struct fe_priv*,void*) ;
 struct fe_priv* netdev_priv (struct net_device*) ;
 int stub1 (struct fe_priv*,int ) ;

__attribute__((used)) static int fe_set_mac_address(struct net_device *dev, void *p)
{
 int ret = eth_mac_addr(dev, p);

 if (!ret) {
  struct fe_priv *priv = netdev_priv(dev);

  if (priv->soc->set_mac)
   priv->soc->set_mac(priv, dev->dev_addr);
  else
   fe_hw_set_macaddr(priv, p);
 }

 return ret;
}
