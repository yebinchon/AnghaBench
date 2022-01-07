
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int features; } ;
struct fe_priv {int dummy; } ;


 int MT7620A_GDMA1_FWD_CFG ;
 int NETIF_F_HW_VLAN_CTAG_RX ;
 int NETIF_F_RXCSUM ;
 int fe_r32 (int ) ;
 int fe_w32 (int,int ) ;
 int mt7621_rxcsum_config (int) ;
 int mt7621_rxvlan_config (int) ;
 struct net_device* priv_netdev (struct fe_priv*) ;

__attribute__((used)) static int mt7621_fwd_config(struct fe_priv *priv)
{
 struct net_device *dev = priv_netdev(priv);

 fe_w32(fe_r32(MT7620A_GDMA1_FWD_CFG) & ~0xffff,
        MT7620A_GDMA1_FWD_CFG);


 mt7621_rxcsum_config((dev->features & NETIF_F_RXCSUM));
 mt7621_rxvlan_config(dev->features & NETIF_F_HW_VLAN_CTAG_RX);

 return 0;
}
