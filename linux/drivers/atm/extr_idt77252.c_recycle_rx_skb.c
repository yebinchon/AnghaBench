
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {scalar_t__ data; } ;
struct idt77252_dev {TYPE_1__* pcidev; } ;
struct TYPE_2__ {int dev; } ;


 int DMA_FROM_DEVICE ;
 int IDT77252_PRV_PADDR (struct sk_buff*) ;
 int IDT77252_PRV_POOL (struct sk_buff*) ;
 int POOL_QUEUE (int ) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int dma_sync_single_for_device (int *,int ,scalar_t__,int ) ;
 int dma_unmap_single (int *,int ,scalar_t__,int ) ;
 int push_rx_skb (struct idt77252_dev*,struct sk_buff*,int ) ;
 int sb_pool_remove (struct idt77252_dev*,struct sk_buff*) ;
 scalar_t__ skb_end_pointer (struct sk_buff*) ;

__attribute__((used)) static void
recycle_rx_skb(struct idt77252_dev *card, struct sk_buff *skb)
{
 u32 handle = IDT77252_PRV_POOL(skb);
 int err;

 dma_sync_single_for_device(&card->pcidev->dev, IDT77252_PRV_PADDR(skb),
       skb_end_pointer(skb) - skb->data,
       DMA_FROM_DEVICE);

 err = push_rx_skb(card, skb, POOL_QUEUE(handle));
 if (err) {
  dma_unmap_single(&card->pcidev->dev, IDT77252_PRV_PADDR(skb),
     skb_end_pointer(skb) - skb->data,
     DMA_FROM_DEVICE);
  sb_pool_remove(card, skb);
  dev_kfree_skb(skb);
 }
}
