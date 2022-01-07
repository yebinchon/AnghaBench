
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vhci_data {int readq; } ;
struct hci_dev {int dummy; } ;


 struct vhci_data* hci_get_drvdata (struct hci_dev*) ;
 int skb_queue_purge (int *) ;

__attribute__((used)) static int vhci_flush(struct hci_dev *hdev)
{
 struct vhci_data *data = hci_get_drvdata(hdev);

 skb_queue_purge(&data->readq);

 return 0;
}
