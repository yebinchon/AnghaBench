
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct adm5120_if_priv {int napi; } ;


 int napi_enable (int *) ;
 struct adm5120_if_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static inline void adm5120_if_napi_enable(struct net_device *dev)
{
 struct adm5120_if_priv *priv = netdev_priv(dev);
 napi_enable(&priv->napi);
}
