
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int hw_features; } ;
struct fe_soc_data {int dummy; } ;
struct fe_priv {int flags; } ;


 int FE_FLAG_HAS_SWITCH ;
 int NETIF_F_RXCSUM ;
 int NETIF_F_SG ;
 struct fe_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static void rt5350_init_data(struct fe_soc_data *data,
        struct net_device *netdev)
{
 struct fe_priv *priv = netdev_priv(netdev);

 priv->flags = FE_FLAG_HAS_SWITCH;
 netdev->hw_features = NETIF_F_SG | NETIF_F_RXCSUM;
}
