
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {scalar_t__ len; scalar_t__ data; } ;
struct mtkbtsdio_hdr {int bt_type; void* reserved; void* len; } ;
struct btmtksdio_dev {TYPE_2__* hdev; int func; } ;
struct TYPE_3__ {int byte_tx; } ;
struct TYPE_4__ {TYPE_1__ stat; } ;


 int GFP_ATOMIC ;
 int MTK_REG_CTDR ;
 int MTK_SDIO_BLOCK_SIZE ;
 void* cpu_to_le16 (scalar_t__) ;
 int hci_skb_pkt_type (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int pskb_expand_head (struct sk_buff*,int,int ,int ) ;
 int round_up (scalar_t__,int ) ;
 int sdio_writesb (int ,int ,scalar_t__,int ) ;
 int skb_headroom (struct sk_buff*) ;
 int skb_pull (struct sk_buff*,int) ;
 int skb_push (struct sk_buff*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int btmtksdio_tx_packet(struct btmtksdio_dev *bdev,
          struct sk_buff *skb)
{
 struct mtkbtsdio_hdr *sdio_hdr;
 int err;


 if (unlikely(skb_headroom(skb) < sizeof(*sdio_hdr))) {
  err = pskb_expand_head(skb, sizeof(*sdio_hdr), 0,
           GFP_ATOMIC);
  if (err < 0)
   return err;
 }


 skb_push(skb, sizeof(*sdio_hdr));

 sdio_hdr = (void *)skb->data;
 sdio_hdr->len = cpu_to_le16(skb->len);
 sdio_hdr->reserved = cpu_to_le16(0);
 sdio_hdr->bt_type = hci_skb_pkt_type(skb);

 err = sdio_writesb(bdev->func, MTK_REG_CTDR, skb->data,
      round_up(skb->len, MTK_SDIO_BLOCK_SIZE));
 if (err < 0)
  goto err_skb_pull;

 bdev->hdev->stat.byte_tx += skb->len;

 kfree_skb(skb);

 return 0;

err_skb_pull:
 skb_pull(skb, sizeof(*sdio_hdr));

 return err;
}
