
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {unsigned char* data; int len; } ;
struct net_device {struct mvswitch_priv* phy_ptr; } ;
struct mvswitch_priv {int* vlans; } ;


 int ARRAY_SIZE (int*) ;
 int ETH_P_8021Q ;
 int MV_HEADER_SIZE ;
 unsigned char* MV_TRAILER_SIZE ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int __vlan_hwaccel_put_tag (struct sk_buff*,int ,int) ;
 int htons (int ) ;
 int skb_pull (struct sk_buff*,int ) ;

__attribute__((used)) static void
mvswitch_mangle_rx(struct net_device *dev, struct sk_buff *skb)
{
 struct mvswitch_priv *priv;
 unsigned char *buf;
 int vlan = -1;
 int i;

 priv = dev->phy_ptr;
 if (WARN_ON_ONCE(!priv))
  return;





 buf = skb->data + skb->len - MV_TRAILER_SIZE;
 if (buf[0] != 0x80)
  return;



 for (i = 0; i < ARRAY_SIZE(priv->vlans); i++) {
  if ((1 << buf[1]) & priv->vlans[i])
   vlan = i;
 }

 if (vlan == -1)
  return;

 __vlan_hwaccel_put_tag(skb, htons(ETH_P_8021Q), vlan);
}
