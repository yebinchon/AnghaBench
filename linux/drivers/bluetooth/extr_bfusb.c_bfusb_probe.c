
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct usb_interface {int dev; TYPE_2__* cur_altsetting; } ;
struct TYPE_6__ {int wMaxPacketSize; int bEndpointAddress; } ;
struct usb_host_endpoint {TYPE_3__ desc; } ;
struct usb_device_id {int dummy; } ;
struct usb_device {int dev; } ;
struct hci_dev {int quirks; int send; int flush; int close; int open; int bus; } ;
struct firmware {struct usb_device_id const* size; struct usb_interface* data; } ;
struct bfusb_data {struct hci_dev* hdev; int completed_q; int pending_q; int transmit_q; int * reassembly; int lock; int bulk_pkt_size; int bulk_out_ep; int bulk_in_ep; struct usb_device* udev; } ;
struct TYPE_4__ {int bNumEndpoints; } ;
struct TYPE_5__ {struct usb_host_endpoint* endpoint; TYPE_1__ desc; } ;


 int BT_DBG (char*,struct usb_interface*,struct usb_device_id const*) ;
 int BT_ERR (char*) ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HCI_QUIRK_BROKEN_LOCAL_COMMANDS ;
 int HCI_USB ;
 int SET_HCIDEV_DEV (struct hci_dev*,int *) ;
 int bfusb_close ;
 int bfusb_flush ;
 scalar_t__ bfusb_load_firmware (struct bfusb_data*,struct usb_interface*,struct usb_device_id const*) ;
 int bfusb_open ;
 int bfusb_send_frame ;
 struct bfusb_data* devm_kzalloc (int *,int,int ) ;
 struct hci_dev* hci_alloc_dev () ;
 int hci_free_dev (struct hci_dev*) ;
 scalar_t__ hci_register_dev (struct hci_dev*) ;
 int hci_set_drvdata (struct hci_dev*,struct bfusb_data*) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int le16_to_cpu (int ) ;
 int release_firmware (struct firmware const*) ;
 scalar_t__ request_firmware (struct firmware const**,char*,int *) ;
 int rwlock_init (int *) ;
 int set_bit (int ,int *) ;
 int skb_queue_head_init (int *) ;
 int usb_set_intfdata (struct usb_interface*,struct bfusb_data*) ;

__attribute__((used)) static int bfusb_probe(struct usb_interface *intf, const struct usb_device_id *id)
{
 const struct firmware *firmware;
 struct usb_device *udev = interface_to_usbdev(intf);
 struct usb_host_endpoint *bulk_out_ep;
 struct usb_host_endpoint *bulk_in_ep;
 struct hci_dev *hdev;
 struct bfusb_data *data;

 BT_DBG("intf %p id %p", intf, id);


 if (intf->cur_altsetting->desc.bNumEndpoints < 2)
  return -EIO;

 bulk_out_ep = &intf->cur_altsetting->endpoint[0];
 bulk_in_ep = &intf->cur_altsetting->endpoint[1];

 if (!bulk_out_ep || !bulk_in_ep) {
  BT_ERR("Bulk endpoints not found");
  goto done;
 }


 data = devm_kzalloc(&intf->dev, sizeof(struct bfusb_data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 data->udev = udev;
 data->bulk_in_ep = bulk_in_ep->desc.bEndpointAddress;
 data->bulk_out_ep = bulk_out_ep->desc.bEndpointAddress;
 data->bulk_pkt_size = le16_to_cpu(bulk_out_ep->desc.wMaxPacketSize);

 rwlock_init(&data->lock);

 data->reassembly = ((void*)0);

 skb_queue_head_init(&data->transmit_q);
 skb_queue_head_init(&data->pending_q);
 skb_queue_head_init(&data->completed_q);

 if (request_firmware(&firmware, "bfubase.frm", &udev->dev) < 0) {
  BT_ERR("Firmware request failed");
  goto done;
 }

 BT_DBG("firmware data %p size %zu", firmware->data, firmware->size);

 if (bfusb_load_firmware(data, firmware->data, firmware->size) < 0) {
  BT_ERR("Firmware loading failed");
  goto release;
 }

 release_firmware(firmware);


 hdev = hci_alloc_dev();
 if (!hdev) {
  BT_ERR("Can't allocate HCI device");
  goto done;
 }

 data->hdev = hdev;

 hdev->bus = HCI_USB;
 hci_set_drvdata(hdev, data);
 SET_HCIDEV_DEV(hdev, &intf->dev);

 hdev->open = bfusb_open;
 hdev->close = bfusb_close;
 hdev->flush = bfusb_flush;
 hdev->send = bfusb_send_frame;

 set_bit(HCI_QUIRK_BROKEN_LOCAL_COMMANDS, &hdev->quirks);

 if (hci_register_dev(hdev) < 0) {
  BT_ERR("Can't register HCI device");
  hci_free_dev(hdev);
  goto done;
 }

 usb_set_intfdata(intf, data);

 return 0;

release:
 release_firmware(firmware);

done:
 return -EIO;
}
