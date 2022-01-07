
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {int dummy; } ;
struct dtl1_info {int txq; } ;


 struct dtl1_info* hci_get_drvdata (struct hci_dev*) ;
 int skb_queue_purge (int *) ;

__attribute__((used)) static int dtl1_hci_flush(struct hci_dev *hdev)
{
 struct dtl1_info *info = hci_get_drvdata(hdev);


 skb_queue_purge(&(info->txq));

 return 0;
}
