
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {int dummy; } ;
struct bt3c_info {int txq; } ;


 struct bt3c_info* hci_get_drvdata (struct hci_dev*) ;
 int skb_queue_purge (int *) ;

__attribute__((used)) static int bt3c_hci_flush(struct hci_dev *hdev)
{
 struct bt3c_info *info = hci_get_drvdata(hdev);


 skb_queue_purge(&(info->txq));

 return 0;
}
