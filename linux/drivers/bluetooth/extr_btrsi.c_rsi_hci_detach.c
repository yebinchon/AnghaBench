
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsi_hci_adapter {struct hci_dev* hdev; } ;
struct hci_dev {int dummy; } ;


 int hci_free_dev (struct hci_dev*) ;
 int hci_unregister_dev (struct hci_dev*) ;
 int kfree (struct rsi_hci_adapter*) ;

__attribute__((used)) static void rsi_hci_detach(void *priv)
{
 struct rsi_hci_adapter *h_adapter = priv;
 struct hci_dev *hdev;

 if (!h_adapter)
  return;

 hdev = h_adapter->hdev;
 if (hdev) {
  hci_unregister_dev(hdev);
  hci_free_dev(hdev);
  h_adapter->hdev = ((void*)0);
 }

 kfree(h_adapter);
}
