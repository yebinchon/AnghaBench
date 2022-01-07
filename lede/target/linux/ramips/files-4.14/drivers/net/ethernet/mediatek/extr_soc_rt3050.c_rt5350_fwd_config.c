
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int features; } ;
struct fe_priv {int dummy; } ;


 int NETIF_F_RXCSUM ;
 struct net_device* priv_netdev (struct fe_priv*) ;
 int rt5350_rxcsum_config (int) ;

__attribute__((used)) static int rt5350_fwd_config(struct fe_priv *priv)
{
 struct net_device *dev = priv_netdev(priv);

 rt5350_rxcsum_config((dev->features & NETIF_F_RXCSUM));

 return 0;
}
