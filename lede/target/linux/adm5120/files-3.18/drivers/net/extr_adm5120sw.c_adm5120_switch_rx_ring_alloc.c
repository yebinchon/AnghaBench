
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int GFP_KERNEL ;
 int RX_DESCS_SIZE ;
 int RX_RING_SIZE ;
 int RX_SKBS_SIZE ;
 int SKB_ALLOC_LEN ;
 int SKB_RESERVE_LEN ;
 struct sk_buff* alloc_skb (int ,int ) ;
 int dma_alloc_coherent (int *,int ,int *,int ) ;
 struct sk_buff** kzalloc (int ,int ) ;
 int rxl_descs ;
 int rxl_descs_dma ;
 struct sk_buff** rxl_skbuff ;
 int skb_reserve (struct sk_buff*,int ) ;

__attribute__((used)) static int adm5120_switch_rx_ring_alloc(void)
{
 int err;
 int i;


 rxl_descs = dma_alloc_coherent(((void*)0), RX_DESCS_SIZE, &rxl_descs_dma,
     GFP_ATOMIC);
 if (!rxl_descs) {
  err = -ENOMEM;
  goto err;
 }

 rxl_skbuff = kzalloc(RX_SKBS_SIZE, GFP_KERNEL);
 if (!rxl_skbuff) {
  err = -ENOMEM;
  goto err;
 }

 for (i = 0; i < RX_RING_SIZE; i++) {
  struct sk_buff *skb;
  skb = alloc_skb(SKB_ALLOC_LEN, GFP_ATOMIC);
  if (!skb) {
   err = -ENOMEM;
   goto err;
  }
  rxl_skbuff[i] = skb;
  skb_reserve(skb, SKB_RESERVE_LEN);
 }

 return 0;

err:
 return err;
}
