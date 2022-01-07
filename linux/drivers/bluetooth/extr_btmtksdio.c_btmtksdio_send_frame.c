
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {int sco_tx; int acl_tx; int cmd_tx; } ;
struct hci_dev {TYPE_1__ stat; } ;
struct btmtksdio_dev {int tx_work; int txq; } ;


 int EILSEQ ;



 struct btmtksdio_dev* hci_get_drvdata (struct hci_dev*) ;
 int hci_skb_pkt_type (struct sk_buff*) ;
 int schedule_work (int *) ;
 int skb_queue_tail (int *,struct sk_buff*) ;

__attribute__((used)) static int btmtksdio_send_frame(struct hci_dev *hdev, struct sk_buff *skb)
{
 struct btmtksdio_dev *bdev = hci_get_drvdata(hdev);

 switch (hci_skb_pkt_type(skb)) {
 case 129:
  hdev->stat.cmd_tx++;
  break;

 case 130:
  hdev->stat.acl_tx++;
  break;

 case 128:
  hdev->stat.sco_tx++;
  break;

 default:
  return -EILSEQ;
 }

 skb_queue_tail(&bdev->txq, skb);

 schedule_work(&bdev->tx_work);

 return 0;
}
