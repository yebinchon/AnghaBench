
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct dma_desc {int dummy; } ;


 int SKB_ALLOC_LEN ;
 int SKB_RESERVE_LEN ;
 int adm5120_rx_dma_update (struct dma_desc*,struct sk_buff*,int) ;
 scalar_t__ cur_rxl ;
 struct sk_buff* dev_alloc_skb (int ) ;
 scalar_t__ dirty_rxl ;
 int memset (struct dma_desc*,int ,int) ;
 int skb_reserve (struct sk_buff*,int ) ;

__attribute__((used)) static void adm5120_switch_rx_ring_reset(struct dma_desc *desc,
  struct sk_buff **skbl, int num)
{
 int i;

 memset(desc, 0, num * sizeof(*desc));
 for (i = 0; i < num; i++) {
  skbl[i] = dev_alloc_skb(SKB_ALLOC_LEN);
  if (!skbl[i]) {
   i = num;
   break;
  }
  skb_reserve(skbl[i], SKB_RESERVE_LEN);
  adm5120_rx_dma_update(&desc[i], skbl[i], (num - 1 == i));
 }

 cur_rxl = 0;
 dirty_rxl = 0;
}
