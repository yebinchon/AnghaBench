
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {int dummy; } ;
struct btmtkuart_dev {int stp_cursor; scalar_t__ stp_dlen; int * rx_skb; int tx_work; int txq; int serdev; } ;


 int cancel_work_sync (int *) ;
 struct btmtkuart_dev* hci_get_drvdata (struct hci_dev*) ;
 int kfree_skb (int *) ;
 int serdev_device_write_flush (int ) ;
 int skb_queue_purge (int *) ;

__attribute__((used)) static int btmtkuart_flush(struct hci_dev *hdev)
{
 struct btmtkuart_dev *bdev = hci_get_drvdata(hdev);


 serdev_device_write_flush(bdev->serdev);
 skb_queue_purge(&bdev->txq);

 cancel_work_sync(&bdev->tx_work);

 kfree_skb(bdev->rx_skb);
 bdev->rx_skb = ((void*)0);

 bdev->stp_cursor = 2;
 bdev->stp_dlen = 0;

 return 0;
}
