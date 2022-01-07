
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u16 ;
struct usb_interface {int dev; TYPE_3__* cur_altsetting; } ;
struct usb_endpoint_descriptor {int dummy; } ;
struct usb_device_id {int driver_info; } ;
struct TYPE_8__ {int bcdDevice; } ;
struct usb_device {TYPE_4__ descriptor; int dev; } ;
struct hci_dev {int manufacturer; int quirks; int setup; void* cmd_timeout; int shutdown; void* set_bdaddr; void* set_diag; int hw_error; int send; int notify; int flush; int close; int open; int dev_type; int bus; } ;
struct gpio_desc {int dummy; } ;
struct btusb_data {int cmdreq_type; int cmdreq; unsigned int isoc_ifnum; struct gpio_desc* reset_gpio; struct usb_device* udev; int * diag; int * isoc; int flags; void* setup_on_usb; scalar_t__ oob_wake_irq; struct hci_dev* hdev; int recv_bulk; int recv_event; int rxlock; int ctrl_anchor; int diag_anchor; int isoc_anchor; int bulk_anchor; int intr_anchor; int txlock; int tx_anchor; int deferred; int waker; int work; struct usb_interface* intf; struct usb_endpoint_descriptor* bulk_rx_ep; struct usb_endpoint_descriptor* bulk_tx_ep; struct usb_endpoint_descriptor* intr_ep; } ;
struct TYPE_5__ {int bInterfaceNumber; int bNumEndpoints; } ;
struct TYPE_7__ {TYPE_2__* endpoint; TYPE_1__ desc; } ;
struct TYPE_6__ {struct usb_endpoint_descriptor desc; } ;


 int BTUSB_AMP ;
 int BTUSB_ATH3012 ;
 int BTUSB_BCM2045 ;
 int BTUSB_BCM92035 ;
 int BTUSB_BCM_APPLE ;
 int BTUSB_BCM_PATCHRAM ;
 int BTUSB_BOOTLOADER ;
 int BTUSB_BROKEN_ISOC ;
 int BTUSB_CSR ;
 int BTUSB_CW6622 ;
 int BTUSB_DIGIANSWER ;
 int BTUSB_IFNUM_2 ;
 int BTUSB_IGNORE ;
 int BTUSB_INTEL ;
 int BTUSB_INTEL_BOOT ;
 int BTUSB_INTEL_NEW ;
 int BTUSB_MARVELL ;
 int BTUSB_MEDIATEK ;
 int BTUSB_QCA_ROME ;
 int BTUSB_REALTEK ;
 int BTUSB_SNIFFER ;
 int BTUSB_SWAVE ;
 int BTUSB_WAKEUP_DISABLE ;
 int BTUSB_WRONG_SCO_MTU ;
 int BT_DBG (char*,struct usb_interface*,struct usb_device_id const*) ;
 int BT_ERR (char*,int) ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int GPIOD_OUT_LOW ;
 int HCI_AMP ;
 int HCI_PRIMARY ;
 int HCI_QUIRK_BROKEN_LOCAL_COMMANDS ;
 int HCI_QUIRK_BROKEN_STORED_LINK_KEY ;
 int HCI_QUIRK_FIXUP_BUFFER_SIZE ;
 int HCI_QUIRK_FIXUP_INQUIRY_MODE ;
 int HCI_QUIRK_NON_PERSISTENT_DIAG ;
 int HCI_QUIRK_NON_PERSISTENT_SETUP ;
 int HCI_QUIRK_RAW_DEVICE ;
 int HCI_QUIRK_RESET_ON_CLOSE ;
 int HCI_QUIRK_SIMULTANEOUS_DISCOVERY ;
 int HCI_QUIRK_STRICT_DUPLICATE_FILTER ;
 int HCI_USB ;
 int INIT_WORK (int *,int ) ;
 scalar_t__ IS_ERR (struct gpio_desc*) ;
 int PTR_ERR (struct gpio_desc*) ;
 int SET_HCIDEV_DEV (struct hci_dev*,int *) ;
 int USB_TYPE_CLASS ;
 int USB_TYPE_VENDOR ;
 int __set_diag_interface (struct hci_dev*) ;
 int blacklist_table ;
 void* btbcm_set_bdaddr ;
 int btbcm_setup_apple ;
 int btbcm_setup_patchram ;
 int btintel_hw_error ;
 void* btintel_set_bdaddr ;
 void* btintel_set_diag ;
 void* btintel_set_diag_mfg ;
 int btrtl_setup_realtek ;
 int btrtl_shutdown_realtek ;
 void* btusb_bcm_set_diag ;
 int btusb_check_needs_reset_resume (struct usb_interface*) ;
 int btusb_close ;
 int btusb_config_oob_wake (struct hci_dev*) ;
 int btusb_driver ;
 int btusb_flush ;
 void* btusb_intel_cmd_timeout ;
 int btusb_mtk_setup ;
 int btusb_mtk_shutdown ;
 int btusb_notify ;
 int btusb_open ;
 int btusb_qca_need_patch (struct usb_device*) ;
 int btusb_recv_bulk ;
 int btusb_recv_bulk_intel ;
 int btusb_recv_event_intel ;
 void* btusb_rtl_cmd_timeout ;
 int btusb_send_frame ;
 int btusb_send_frame_intel ;
 void* btusb_set_bdaddr_ath3012 ;
 void* btusb_set_bdaddr_marvell ;
 int btusb_setup_bcm92035 ;
 int btusb_setup_csr ;
 int btusb_setup_intel ;
 int btusb_setup_intel_new ;
 void* btusb_setup_qca ;
 int btusb_shutdown_intel ;
 int btusb_shutdown_intel_new ;
 int btusb_waker ;
 int btusb_work ;
 struct btusb_data* devm_kzalloc (int *,int,int ) ;
 int disable_scofix ;
 scalar_t__ enable_autosuspend ;
 scalar_t__ force_scofix ;
 struct gpio_desc* gpiod_get_optional (int *,char*,int ) ;
 int gpiod_put (struct gpio_desc*) ;
 struct hci_dev* hci_alloc_dev () ;
 int hci_free_dev (struct hci_dev*) ;
 int hci_recv_frame ;
 int hci_register_dev (struct hci_dev*) ;
 int hci_set_drvdata (struct hci_dev*,struct btusb_data*) ;
 int init_usb_anchor (int *) ;
 void* interface_to_usbdev (struct usb_interface*) ;
 int le16_to_cpu (int ) ;
 int marvell_config_oob_wake (struct hci_dev*) ;
 int reset ;
 int set_bit (int ,int *) ;
 int spin_lock_init (int *) ;
 int usb_driver_claim_interface (int *,int *,struct btusb_data*) ;
 int usb_enable_autosuspend (struct usb_device*) ;
 scalar_t__ usb_endpoint_is_bulk_in (struct usb_endpoint_descriptor*) ;
 scalar_t__ usb_endpoint_is_bulk_out (struct usb_endpoint_descriptor*) ;
 scalar_t__ usb_endpoint_is_int_in (struct usb_endpoint_descriptor*) ;
 void* usb_ifnum_to_if (struct usb_device*,unsigned int) ;
 struct usb_device_id* usb_match_id (struct usb_interface*,int ) ;
 int usb_set_interface (struct usb_device*,int ,int ) ;
 int usb_set_intfdata (struct usb_interface*,struct btusb_data*) ;

__attribute__((used)) static int btusb_probe(struct usb_interface *intf,
         const struct usb_device_id *id)
{
 struct usb_endpoint_descriptor *ep_desc;
 struct gpio_desc *reset_gpio;
 struct btusb_data *data;
 struct hci_dev *hdev;
 unsigned ifnum_base;
 int i, err;

 BT_DBG("intf %p id %p", intf, id);


 if (intf->cur_altsetting->desc.bInterfaceNumber != 0) {
  if (!(id->driver_info & BTUSB_IFNUM_2))
   return -ENODEV;
  if (intf->cur_altsetting->desc.bInterfaceNumber != 2)
   return -ENODEV;
 }

 ifnum_base = intf->cur_altsetting->desc.bInterfaceNumber;

 if (!id->driver_info) {
  const struct usb_device_id *match;

  match = usb_match_id(intf, blacklist_table);
  if (match)
   id = match;
 }

 if (id->driver_info == BTUSB_IGNORE)
  return -ENODEV;

 if (id->driver_info & BTUSB_ATH3012) {
  struct usb_device *udev = interface_to_usbdev(intf);




  if (le16_to_cpu(udev->descriptor.bcdDevice) <= 0x0001 &&
      !btusb_qca_need_patch(udev))
   return -ENODEV;
 }

 data = devm_kzalloc(&intf->dev, sizeof(*data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 for (i = 0; i < intf->cur_altsetting->desc.bNumEndpoints; i++) {
  ep_desc = &intf->cur_altsetting->endpoint[i].desc;

  if (!data->intr_ep && usb_endpoint_is_int_in(ep_desc)) {
   data->intr_ep = ep_desc;
   continue;
  }

  if (!data->bulk_tx_ep && usb_endpoint_is_bulk_out(ep_desc)) {
   data->bulk_tx_ep = ep_desc;
   continue;
  }

  if (!data->bulk_rx_ep && usb_endpoint_is_bulk_in(ep_desc)) {
   data->bulk_rx_ep = ep_desc;
   continue;
  }
 }

 if (!data->intr_ep || !data->bulk_tx_ep || !data->bulk_rx_ep)
  return -ENODEV;

 if (id->driver_info & BTUSB_AMP) {
  data->cmdreq_type = USB_TYPE_CLASS | 0x01;
  data->cmdreq = 0x2b;
 } else {
  data->cmdreq_type = USB_TYPE_CLASS;
  data->cmdreq = 0x00;
 }

 data->udev = interface_to_usbdev(intf);
 data->intf = intf;

 INIT_WORK(&data->work, btusb_work);
 INIT_WORK(&data->waker, btusb_waker);
 init_usb_anchor(&data->deferred);
 init_usb_anchor(&data->tx_anchor);
 spin_lock_init(&data->txlock);

 init_usb_anchor(&data->intr_anchor);
 init_usb_anchor(&data->bulk_anchor);
 init_usb_anchor(&data->isoc_anchor);
 init_usb_anchor(&data->diag_anchor);
 init_usb_anchor(&data->ctrl_anchor);
 spin_lock_init(&data->rxlock);

 if (id->driver_info & BTUSB_INTEL_NEW) {
  data->recv_event = btusb_recv_event_intel;
  data->recv_bulk = btusb_recv_bulk_intel;
  set_bit(BTUSB_BOOTLOADER, &data->flags);
 } else {
  data->recv_event = hci_recv_frame;
  data->recv_bulk = btusb_recv_bulk;
 }

 hdev = hci_alloc_dev();
 if (!hdev)
  return -ENOMEM;

 hdev->bus = HCI_USB;
 hci_set_drvdata(hdev, data);

 if (id->driver_info & BTUSB_AMP)
  hdev->dev_type = HCI_AMP;
 else
  hdev->dev_type = HCI_PRIMARY;

 data->hdev = hdev;

 SET_HCIDEV_DEV(hdev, &intf->dev);

 reset_gpio = gpiod_get_optional(&data->udev->dev, "reset",
     GPIOD_OUT_LOW);
 if (IS_ERR(reset_gpio)) {
  err = PTR_ERR(reset_gpio);
  goto out_free_dev;
 } else if (reset_gpio) {
  data->reset_gpio = reset_gpio;
 }

 hdev->open = btusb_open;
 hdev->close = btusb_close;
 hdev->flush = btusb_flush;
 hdev->send = btusb_send_frame;
 hdev->notify = btusb_notify;
 if (id->driver_info & BTUSB_CW6622)
  set_bit(HCI_QUIRK_BROKEN_STORED_LINK_KEY, &hdev->quirks);

 if (id->driver_info & BTUSB_BCM2045)
  set_bit(HCI_QUIRK_BROKEN_STORED_LINK_KEY, &hdev->quirks);

 if (id->driver_info & BTUSB_BCM92035)
  hdev->setup = btusb_setup_bcm92035;
 if (id->driver_info & BTUSB_INTEL) {
  hdev->manufacturer = 2;
  hdev->setup = btusb_setup_intel;
  hdev->shutdown = btusb_shutdown_intel;
  hdev->set_diag = btintel_set_diag_mfg;
  hdev->set_bdaddr = btintel_set_bdaddr;
  hdev->cmd_timeout = btusb_intel_cmd_timeout;
  set_bit(HCI_QUIRK_STRICT_DUPLICATE_FILTER, &hdev->quirks);
  set_bit(HCI_QUIRK_SIMULTANEOUS_DISCOVERY, &hdev->quirks);
  set_bit(HCI_QUIRK_NON_PERSISTENT_DIAG, &hdev->quirks);
 }

 if (id->driver_info & BTUSB_INTEL_NEW) {
  hdev->manufacturer = 2;
  hdev->send = btusb_send_frame_intel;
  hdev->setup = btusb_setup_intel_new;
  hdev->shutdown = btusb_shutdown_intel_new;
  hdev->hw_error = btintel_hw_error;
  hdev->set_diag = btintel_set_diag;
  hdev->set_bdaddr = btintel_set_bdaddr;
  hdev->cmd_timeout = btusb_intel_cmd_timeout;
  set_bit(HCI_QUIRK_STRICT_DUPLICATE_FILTER, &hdev->quirks);
  set_bit(HCI_QUIRK_SIMULTANEOUS_DISCOVERY, &hdev->quirks);
  set_bit(HCI_QUIRK_NON_PERSISTENT_DIAG, &hdev->quirks);
 }

 if (id->driver_info & BTUSB_MARVELL)
  hdev->set_bdaddr = btusb_set_bdaddr_marvell;
 if (id->driver_info & BTUSB_SWAVE) {
  set_bit(HCI_QUIRK_FIXUP_INQUIRY_MODE, &hdev->quirks);
  set_bit(HCI_QUIRK_BROKEN_LOCAL_COMMANDS, &hdev->quirks);
 }

 if (id->driver_info & BTUSB_INTEL_BOOT) {
  hdev->manufacturer = 2;
  set_bit(HCI_QUIRK_RAW_DEVICE, &hdev->quirks);
 }

 if (id->driver_info & BTUSB_ATH3012) {
  data->setup_on_usb = btusb_setup_qca;
  hdev->set_bdaddr = btusb_set_bdaddr_ath3012;
  set_bit(HCI_QUIRK_SIMULTANEOUS_DISCOVERY, &hdev->quirks);
  set_bit(HCI_QUIRK_STRICT_DUPLICATE_FILTER, &hdev->quirks);
 }

 if (id->driver_info & BTUSB_QCA_ROME) {
  data->setup_on_usb = btusb_setup_qca;
  hdev->set_bdaddr = btusb_set_bdaddr_ath3012;
  set_bit(HCI_QUIRK_SIMULTANEOUS_DISCOVERY, &hdev->quirks);
  btusb_check_needs_reset_resume(intf);
 }
 if (id->driver_info & BTUSB_AMP) {

  data->isoc = ((void*)0);
 } else {

  data->isoc = usb_ifnum_to_if(data->udev, ifnum_base + 1);
  data->isoc_ifnum = ifnum_base + 1;
 }

 if (!reset)
  set_bit(HCI_QUIRK_RESET_ON_CLOSE, &hdev->quirks);

 if (force_scofix || id->driver_info & BTUSB_WRONG_SCO_MTU) {
  if (!disable_scofix)
   set_bit(HCI_QUIRK_FIXUP_BUFFER_SIZE, &hdev->quirks);
 }

 if (id->driver_info & BTUSB_BROKEN_ISOC)
  data->isoc = ((void*)0);

 if (id->driver_info & BTUSB_DIGIANSWER) {
  data->cmdreq_type = USB_TYPE_VENDOR;
  set_bit(HCI_QUIRK_RESET_ON_CLOSE, &hdev->quirks);
 }

 if (id->driver_info & BTUSB_CSR) {
  struct usb_device *udev = data->udev;
  u16 bcdDevice = le16_to_cpu(udev->descriptor.bcdDevice);


  if (bcdDevice < 0x117)
   set_bit(HCI_QUIRK_RESET_ON_CLOSE, &hdev->quirks);


  if (bcdDevice <= 0x100 || bcdDevice == 0x134)
   hdev->setup = btusb_setup_csr;

  set_bit(HCI_QUIRK_SIMULTANEOUS_DISCOVERY, &hdev->quirks);
 }

 if (id->driver_info & BTUSB_SNIFFER) {
  struct usb_device *udev = data->udev;


  if (le16_to_cpu(udev->descriptor.bcdDevice) > 0x997)
   set_bit(HCI_QUIRK_RAW_DEVICE, &hdev->quirks);
 }

 if (id->driver_info & BTUSB_INTEL_BOOT) {



  err = usb_set_interface(data->udev, 0, 0);
  if (err < 0) {
   BT_ERR("failed to set interface 0, alt 0 %d", err);
   goto out_free_dev;
  }
 }

 if (data->isoc) {
  err = usb_driver_claim_interface(&btusb_driver,
       data->isoc, data);
  if (err < 0)
   goto out_free_dev;
 }
 if (enable_autosuspend)
  usb_enable_autosuspend(data->udev);

 err = hci_register_dev(hdev);
 if (err < 0)
  goto out_free_dev;

 usb_set_intfdata(intf, data);

 return 0;

out_free_dev:
 if (data->reset_gpio)
  gpiod_put(data->reset_gpio);
 hci_free_dev(hdev);
 return err;
}
