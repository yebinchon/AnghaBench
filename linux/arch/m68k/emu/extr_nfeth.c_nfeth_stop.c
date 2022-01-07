
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfeth_private {int ethX; } ;
struct net_device {int dummy; } ;


 scalar_t__ XIF_STOP ;
 struct nfeth_private* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 scalar_t__ nfEtherID ;
 int nf_call (scalar_t__,int ) ;

__attribute__((used)) static int nfeth_stop(struct net_device *dev)
{
 struct nfeth_private *priv = netdev_priv(dev);


 netif_stop_queue(dev);

 nf_call(nfEtherID + XIF_STOP, priv->ethX);

 return 0;
}
