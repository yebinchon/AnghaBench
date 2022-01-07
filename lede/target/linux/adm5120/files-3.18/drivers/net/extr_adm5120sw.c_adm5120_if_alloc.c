
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int watchdog_timeo; int * netdev_ops; int irq; } ;
struct adm5120_if_priv {int napi; struct net_device* dev; } ;


 int ADM5120_IRQ_SWITCH ;
 int TX_TIMEOUT ;
 int adm5120_if_poll ;
 int adm5120sw_netdev_ops ;
 struct net_device* alloc_etherdev (int) ;
 struct adm5120_if_priv* netdev_priv (struct net_device*) ;
 int netif_napi_add (struct net_device*,int *,int ,int) ;

__attribute__((used)) static struct net_device *adm5120_if_alloc(void)
{
 struct net_device *dev;
 struct adm5120_if_priv *priv;

 dev = alloc_etherdev(sizeof(*priv));
 if (!dev)
  return ((void*)0);

 priv = netdev_priv(dev);
 priv->dev = dev;

 dev->irq = ADM5120_IRQ_SWITCH;
 dev->netdev_ops = &adm5120sw_netdev_ops;
 dev->watchdog_timeo = TX_TIMEOUT;





 return dev;
}
