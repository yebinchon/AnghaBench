
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char u8 ;
struct hci_dev {int dummy; } ;
struct btmtkuart_dev {int * rx_skb; int hdev; } ;


 int ARRAY_SIZE (int ) ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int bt_dev_err (int ,char*,int) ;
 int * h4_recv_buf (int ,int *,unsigned char const*,int,int ,int ) ;
 struct btmtkuart_dev* hci_get_drvdata (struct hci_dev*) ;
 int mtk_recv_pkts ;
 unsigned char* mtk_stp_split (struct btmtkuart_dev*,unsigned char const*,int,int*) ;

__attribute__((used)) static int btmtkuart_recv(struct hci_dev *hdev, const u8 *data, size_t count)
{
 struct btmtkuart_dev *bdev = hci_get_drvdata(hdev);
 const unsigned char *p_left = data, *p_h4;
 int sz_left = count, sz_h4, adv;
 int err;

 while (sz_left > 0) {
  p_h4 = mtk_stp_split(bdev, p_left, sz_left, &sz_h4);
  if (!p_h4)
   break;

  adv = p_h4 - p_left;
  sz_left -= adv;
  p_left += adv;

  bdev->rx_skb = h4_recv_buf(bdev->hdev, bdev->rx_skb, p_h4,
        sz_h4, mtk_recv_pkts,
        ARRAY_SIZE(mtk_recv_pkts));
  if (IS_ERR(bdev->rx_skb)) {
   err = PTR_ERR(bdev->rx_skb);
   bt_dev_err(bdev->hdev,
       "Frame reassembly failed (%d)", err);
   bdev->rx_skb = ((void*)0);
   return err;
  }

  sz_left -= sz_h4;
  p_left += sz_h4;
 }

 return 0;
}
