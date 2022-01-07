
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {int dummy; } ;
struct btmtksdio_dev {int tx_work; int txq; } ;


 int cancel_work_sync (int *) ;
 struct btmtksdio_dev* hci_get_drvdata (struct hci_dev*) ;
 int skb_queue_purge (int *) ;

__attribute__((used)) static int btmtksdio_flush(struct hci_dev *hdev)
{
 struct btmtksdio_dev *bdev = hci_get_drvdata(hdev);

 skb_queue_purge(&bdev->txq);

 cancel_work_sync(&bdev->tx_work);

 return 0;
}
