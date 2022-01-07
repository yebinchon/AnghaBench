
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int len; } ;
struct nsh {int type; int len; scalar_t__ zero; } ;
struct TYPE_2__ {int sco_tx; int acl_tx; int cmd_tx; } ;
struct hci_dev {TYPE_1__ stat; } ;
struct dtl1_info {int txq; } ;


 int EILSEQ ;
 int ENOMEM ;
 int GFP_ATOMIC ;



 scalar_t__ NSHL ;
 struct sk_buff* bt_skb_alloc (scalar_t__,int ) ;
 int dtl1_write_wakeup (struct dtl1_info*) ;
 struct dtl1_info* hci_get_drvdata (struct hci_dev*) ;
 int hci_skb_pkt_type (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int memcpy (int ,struct nsh*,scalar_t__) ;
 int skb_copy_from_linear_data (struct sk_buff*,int ,int) ;
 int skb_push (struct sk_buff*,scalar_t__) ;
 int skb_put (struct sk_buff*,int) ;
 int skb_put_u8 (struct sk_buff*,int ) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 int skb_reserve (struct sk_buff*,scalar_t__) ;

__attribute__((used)) static int dtl1_hci_send_frame(struct hci_dev *hdev, struct sk_buff *skb)
{
 struct dtl1_info *info = hci_get_drvdata(hdev);
 struct sk_buff *s;
 struct nsh nsh;

 switch (hci_skb_pkt_type(skb)) {
 case 129:
  hdev->stat.cmd_tx++;
  nsh.type = 0x81;
  break;
 case 130:
  hdev->stat.acl_tx++;
  nsh.type = 0x82;
  break;
 case 128:
  hdev->stat.sco_tx++;
  nsh.type = 0x83;
  break;
 default:
  return -EILSEQ;
 }

 nsh.zero = 0;
 nsh.len = skb->len;

 s = bt_skb_alloc(NSHL + skb->len + 1, GFP_ATOMIC);
 if (!s)
  return -ENOMEM;

 skb_reserve(s, NSHL);
 skb_copy_from_linear_data(skb, skb_put(s, skb->len), skb->len);
 if (skb->len & 0x0001)
  skb_put_u8(s, 0);


 memcpy(skb_push(s, NSHL), &nsh, NSHL);
 skb_queue_tail(&(info->txq), s);

 dtl1_write_wakeup(info);

 kfree_skb(skb);

 return 0;
}
