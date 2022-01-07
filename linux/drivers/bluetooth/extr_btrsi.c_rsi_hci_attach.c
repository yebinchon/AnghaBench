
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsi_proto_ops {scalar_t__ (* get_host_intf ) (void*) ;int (* set_bt_context ) (void*,struct rsi_hci_adapter*) ;} ;
struct rsi_hci_adapter {struct hci_dev* hdev; struct rsi_proto_ops* proto_ops; void* priv; } ;
struct hci_dev {int send; int flush; int close; int open; int dev_type; int bus; } ;


 int BT_ERR (char*,...) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HCI_PRIMARY ;
 int HCI_SDIO ;
 int HCI_USB ;
 scalar_t__ RSI_HOST_INTF_SDIO ;
 struct hci_dev* hci_alloc_dev () ;
 int hci_free_dev (struct hci_dev*) ;
 int hci_register_dev (struct hci_dev*) ;
 int hci_set_drvdata (struct hci_dev*,struct rsi_hci_adapter*) ;
 int kfree (struct rsi_hci_adapter*) ;
 struct rsi_hci_adapter* kzalloc (int,int ) ;
 int rsi_hci_close ;
 int rsi_hci_flush ;
 int rsi_hci_open ;
 int rsi_hci_send_pkt ;
 int stub1 (void*,struct rsi_hci_adapter*) ;
 scalar_t__ stub2 (void*) ;

__attribute__((used)) static int rsi_hci_attach(void *priv, struct rsi_proto_ops *ops)
{
 struct rsi_hci_adapter *h_adapter = ((void*)0);
 struct hci_dev *hdev;
 int err = 0;

 h_adapter = kzalloc(sizeof(*h_adapter), GFP_KERNEL);
 if (!h_adapter)
  return -ENOMEM;

 h_adapter->priv = priv;
 ops->set_bt_context(priv, h_adapter);
 h_adapter->proto_ops = ops;

 hdev = hci_alloc_dev();
 if (!hdev) {
  BT_ERR("Failed to alloc HCI device");
  goto err;
 }

 h_adapter->hdev = hdev;

 if (ops->get_host_intf(priv) == RSI_HOST_INTF_SDIO)
  hdev->bus = HCI_SDIO;
 else
  hdev->bus = HCI_USB;

 hci_set_drvdata(hdev, h_adapter);
 hdev->dev_type = HCI_PRIMARY;
 hdev->open = rsi_hci_open;
 hdev->close = rsi_hci_close;
 hdev->flush = rsi_hci_flush;
 hdev->send = rsi_hci_send_pkt;

 err = hci_register_dev(hdev);
 if (err < 0) {
  BT_ERR("HCI registration failed with errcode %d", err);
  hci_free_dev(hdev);
  goto err;
 }

 return 0;
err:
 h_adapter->hdev = ((void*)0);
 kfree(h_adapter);
 return -EINVAL;
}
