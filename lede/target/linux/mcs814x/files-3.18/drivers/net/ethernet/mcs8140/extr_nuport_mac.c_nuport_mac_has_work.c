
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nuport_mac_priv {scalar_t__* rx_skb; } ;


 unsigned int RX_RING_SIZE ;

__attribute__((used)) static unsigned int nuport_mac_has_work(struct nuport_mac_priv *priv)
{
 unsigned int i;

 for (i = 0; i < RX_RING_SIZE; i++)
  if (priv->rx_skb[i])
   return 1;

 return 0;
}
