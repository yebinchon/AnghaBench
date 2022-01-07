
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {int name; } ;
struct btsdio_data {int txq; } ;


 int BT_DBG (char*,int ) ;
 struct btsdio_data* hci_get_drvdata (struct hci_dev*) ;
 int skb_queue_purge (int *) ;

__attribute__((used)) static int btsdio_flush(struct hci_dev *hdev)
{
 struct btsdio_data *data = hci_get_drvdata(hdev);

 BT_DBG("%s", hdev->name);

 skb_queue_purge(&data->txq);

 return 0;
}
