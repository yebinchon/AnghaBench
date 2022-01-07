
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {unsigned int len; scalar_t__ protocol; } ;
struct fe_priv {int flags; } ;


 int ETH_P_8021Q ;
 unsigned int ETH_ZLEN ;
 int FE_FLAG_PADDING_64B ;
 int FE_FLAG_PADDING_BUG ;
 unsigned int VLAN_ETH_ZLEN ;
 scalar_t__ cpu_to_be16 (int ) ;
 int skb_pad (struct sk_buff*,unsigned int) ;
 int skb_set_tail_pointer (struct sk_buff*,unsigned int) ;
 scalar_t__ skb_vlan_tag_present (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline int fe_skb_padto(struct sk_buff *skb, struct fe_priv *priv)
{
 unsigned int len;
 int ret;

 ret = 0;
 if (unlikely(skb->len < VLAN_ETH_ZLEN)) {
  if ((priv->flags & FE_FLAG_PADDING_64B) &&
      !(priv->flags & FE_FLAG_PADDING_BUG))
   return ret;

  if (skb_vlan_tag_present(skb))
   len = ETH_ZLEN;
  else if (skb->protocol == cpu_to_be16(ETH_P_8021Q))
   len = VLAN_ETH_ZLEN;
  else if (!(priv->flags & FE_FLAG_PADDING_64B))
   len = ETH_ZLEN;
  else
   return ret;

  if (skb->len < len) {
   ret = skb_pad(skb, len - skb->len);
   if (ret < 0)
    return ret;
   skb->len = len;
   skb_set_tail_pointer(skb, len);
  }
 }

 return ret;
}
