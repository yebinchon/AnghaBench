#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct usb_interface {int /*<<< orphan*/  dev; TYPE_3__* cur_altsetting; } ;
struct usb_endpoint_descriptor {int dummy; } ;
struct usb_device_id {int driver_info; } ;
struct TYPE_8__ {int /*<<< orphan*/  bcdDevice; } ;
struct usb_device {TYPE_4__ descriptor; int /*<<< orphan*/  dev; } ;
struct hci_dev {int manufacturer; int /*<<< orphan*/  quirks; int /*<<< orphan*/  setup; void* cmd_timeout; int /*<<< orphan*/  shutdown; void* set_bdaddr; void* set_diag; int /*<<< orphan*/  hw_error; int /*<<< orphan*/  send; int /*<<< orphan*/  notify; int /*<<< orphan*/  flush; int /*<<< orphan*/  close; int /*<<< orphan*/  open; int /*<<< orphan*/  dev_type; int /*<<< orphan*/  bus; } ;
struct gpio_desc {int dummy; } ;
struct btusb_data {int cmdreq_type; int cmdreq; unsigned int isoc_ifnum; struct gpio_desc* reset_gpio; struct usb_device* udev; int /*<<< orphan*/ * diag; int /*<<< orphan*/ * isoc; int /*<<< orphan*/  flags; void* setup_on_usb; scalar_t__ oob_wake_irq; struct hci_dev* hdev; int /*<<< orphan*/  recv_bulk; int /*<<< orphan*/  recv_event; int /*<<< orphan*/  rxlock; int /*<<< orphan*/  ctrl_anchor; int /*<<< orphan*/  diag_anchor; int /*<<< orphan*/  isoc_anchor; int /*<<< orphan*/  bulk_anchor; int /*<<< orphan*/  intr_anchor; int /*<<< orphan*/  txlock; int /*<<< orphan*/  tx_anchor; int /*<<< orphan*/  deferred; int /*<<< orphan*/  waker; int /*<<< orphan*/  work; struct usb_interface* intf; struct usb_endpoint_descriptor* bulk_rx_ep; struct usb_endpoint_descriptor* bulk_tx_ep; struct usb_endpoint_descriptor* intr_ep; } ;
struct TYPE_5__ {int bInterfaceNumber; int bNumEndpoints; } ;
struct TYPE_7__ {TYPE_2__* endpoint; TYPE_1__ desc; } ;
struct TYPE_6__ {struct usb_endpoint_descriptor desc; } ;

/* Variables and functions */
 int BTUSB_AMP ; 
 int BTUSB_ATH3012 ; 
 int BTUSB_BCM2045 ; 
 int BTUSB_BCM92035 ; 
 int BTUSB_BCM_APPLE ; 
 int BTUSB_BCM_PATCHRAM ; 
 int /*<<< orphan*/  BTUSB_BOOTLOADER ; 
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
 int /*<<< orphan*/  BTUSB_WAKEUP_DISABLE ; 
 int BTUSB_WRONG_SCO_MTU ; 
 int /*<<< orphan*/  FUNC0 (char*,struct usb_interface*,struct usb_device_id const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 int /*<<< orphan*/  HCI_AMP ; 
 int /*<<< orphan*/  HCI_PRIMARY ; 
 int /*<<< orphan*/  HCI_QUIRK_BROKEN_LOCAL_COMMANDS ; 
 int /*<<< orphan*/  HCI_QUIRK_BROKEN_STORED_LINK_KEY ; 
 int /*<<< orphan*/  HCI_QUIRK_FIXUP_BUFFER_SIZE ; 
 int /*<<< orphan*/  HCI_QUIRK_FIXUP_INQUIRY_MODE ; 
 int /*<<< orphan*/  HCI_QUIRK_NON_PERSISTENT_DIAG ; 
 int /*<<< orphan*/  HCI_QUIRK_NON_PERSISTENT_SETUP ; 
 int /*<<< orphan*/  HCI_QUIRK_RAW_DEVICE ; 
 int /*<<< orphan*/  HCI_QUIRK_RESET_ON_CLOSE ; 
 int /*<<< orphan*/  HCI_QUIRK_SIMULTANEOUS_DISCOVERY ; 
 int /*<<< orphan*/  HCI_QUIRK_STRICT_DUPLICATE_FILTER ; 
 int /*<<< orphan*/  HCI_USB ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct gpio_desc*) ; 
 int FUNC4 (struct gpio_desc*) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_dev*,int /*<<< orphan*/ *) ; 
 int USB_TYPE_CLASS ; 
 int USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC6 (struct hci_dev*) ; 
 int /*<<< orphan*/  blacklist_table ; 
 void* btbcm_set_bdaddr ; 
 int /*<<< orphan*/  btbcm_setup_apple ; 
 int /*<<< orphan*/  btbcm_setup_patchram ; 
 int /*<<< orphan*/  btintel_hw_error ; 
 void* btintel_set_bdaddr ; 
 void* btintel_set_diag ; 
 void* btintel_set_diag_mfg ; 
 int /*<<< orphan*/  btrtl_setup_realtek ; 
 int /*<<< orphan*/  btrtl_shutdown_realtek ; 
 void* btusb_bcm_set_diag ; 
 int /*<<< orphan*/  FUNC7 (struct usb_interface*) ; 
 int /*<<< orphan*/  btusb_close ; 
 int FUNC8 (struct hci_dev*) ; 
 int /*<<< orphan*/  btusb_driver ; 
 int /*<<< orphan*/  btusb_flush ; 
 void* btusb_intel_cmd_timeout ; 
 int /*<<< orphan*/  btusb_mtk_setup ; 
 int /*<<< orphan*/  btusb_mtk_shutdown ; 
 int /*<<< orphan*/  btusb_notify ; 
 int /*<<< orphan*/  btusb_open ; 
 int /*<<< orphan*/  FUNC9 (struct usb_device*) ; 
 int /*<<< orphan*/  btusb_recv_bulk ; 
 int /*<<< orphan*/  btusb_recv_bulk_intel ; 
 int /*<<< orphan*/  btusb_recv_event_intel ; 
 void* btusb_rtl_cmd_timeout ; 
 int /*<<< orphan*/  btusb_send_frame ; 
 int /*<<< orphan*/  btusb_send_frame_intel ; 
 void* btusb_set_bdaddr_ath3012 ; 
 void* btusb_set_bdaddr_marvell ; 
 int /*<<< orphan*/  btusb_setup_bcm92035 ; 
 int /*<<< orphan*/  btusb_setup_csr ; 
 int /*<<< orphan*/  btusb_setup_intel ; 
 int /*<<< orphan*/  btusb_setup_intel_new ; 
 void* btusb_setup_qca ; 
 int /*<<< orphan*/  btusb_shutdown_intel ; 
 int /*<<< orphan*/  btusb_shutdown_intel_new ; 
 int /*<<< orphan*/  btusb_waker ; 
 int /*<<< orphan*/  btusb_work ; 
 struct btusb_data* FUNC10 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  disable_scofix ; 
 scalar_t__ enable_autosuspend ; 
 scalar_t__ force_scofix ; 
 struct gpio_desc* FUNC11 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct gpio_desc*) ; 
 struct hci_dev* FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (struct hci_dev*) ; 
 int /*<<< orphan*/  hci_recv_frame ; 
 int FUNC15 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC16 (struct hci_dev*,struct btusb_data*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 void* FUNC18 (struct usb_interface*) ; 
 int FUNC19 (int /*<<< orphan*/ ) ; 
 int FUNC20 (struct hci_dev*) ; 
 int /*<<< orphan*/  reset ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct btusb_data*) ; 
 int /*<<< orphan*/  FUNC24 (struct usb_device*) ; 
 scalar_t__ FUNC25 (struct usb_endpoint_descriptor*) ; 
 scalar_t__ FUNC26 (struct usb_endpoint_descriptor*) ; 
 scalar_t__ FUNC27 (struct usb_endpoint_descriptor*) ; 
 void* FUNC28 (struct usb_device*,unsigned int) ; 
 struct usb_device_id* FUNC29 (struct usb_interface*,int /*<<< orphan*/ ) ; 
 int FUNC30 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (struct usb_interface*,struct btusb_data*) ; 

__attribute__((used)) static int FUNC32(struct usb_interface *intf,
		       const struct usb_device_id *id)
{
	struct usb_endpoint_descriptor *ep_desc;
	struct gpio_desc *reset_gpio;
	struct btusb_data *data;
	struct hci_dev *hdev;
	unsigned ifnum_base;
	int i, err;

	FUNC0("intf %p id %p", intf, id);

	/* interface numbers are hardcoded in the spec */
	if (intf->cur_altsetting->desc.bInterfaceNumber != 0) {
		if (!(id->driver_info & BTUSB_IFNUM_2))
			return -ENODEV;
		if (intf->cur_altsetting->desc.bInterfaceNumber != 2)
			return -ENODEV;
	}

	ifnum_base = intf->cur_altsetting->desc.bInterfaceNumber;

	if (!id->driver_info) {
		const struct usb_device_id *match;

		match = FUNC29(intf, blacklist_table);
		if (match)
			id = match;
	}

	if (id->driver_info == BTUSB_IGNORE)
		return -ENODEV;

	if (id->driver_info & BTUSB_ATH3012) {
		struct usb_device *udev = FUNC18(intf);

		/* Old firmware would otherwise let ath3k driver load
		 * patch and sysconfig files
		 */
		if (FUNC19(udev->descriptor.bcdDevice) <= 0x0001 &&
		    !FUNC9(udev))
			return -ENODEV;
	}

	data = FUNC10(&intf->dev, sizeof(*data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	for (i = 0; i < intf->cur_altsetting->desc.bNumEndpoints; i++) {
		ep_desc = &intf->cur_altsetting->endpoint[i].desc;

		if (!data->intr_ep && FUNC27(ep_desc)) {
			data->intr_ep = ep_desc;
			continue;
		}

		if (!data->bulk_tx_ep && FUNC26(ep_desc)) {
			data->bulk_tx_ep = ep_desc;
			continue;
		}

		if (!data->bulk_rx_ep && FUNC25(ep_desc)) {
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

	data->udev = FUNC18(intf);
	data->intf = intf;

	FUNC2(&data->work, btusb_work);
	FUNC2(&data->waker, btusb_waker);
	FUNC17(&data->deferred);
	FUNC17(&data->tx_anchor);
	FUNC22(&data->txlock);

	FUNC17(&data->intr_anchor);
	FUNC17(&data->bulk_anchor);
	FUNC17(&data->isoc_anchor);
	FUNC17(&data->diag_anchor);
	FUNC17(&data->ctrl_anchor);
	FUNC22(&data->rxlock);

	if (id->driver_info & BTUSB_INTEL_NEW) {
		data->recv_event = btusb_recv_event_intel;
		data->recv_bulk = btusb_recv_bulk_intel;
		FUNC21(BTUSB_BOOTLOADER, &data->flags);
	} else {
		data->recv_event = hci_recv_frame;
		data->recv_bulk = btusb_recv_bulk;
	}

	hdev = FUNC13();
	if (!hdev)
		return -ENOMEM;

	hdev->bus = HCI_USB;
	FUNC16(hdev, data);

	if (id->driver_info & BTUSB_AMP)
		hdev->dev_type = HCI_AMP;
	else
		hdev->dev_type = HCI_PRIMARY;

	data->hdev = hdev;

	FUNC5(hdev, &intf->dev);

	reset_gpio = FUNC11(&data->udev->dev, "reset",
					GPIOD_OUT_LOW);
	if (FUNC3(reset_gpio)) {
		err = FUNC4(reset_gpio);
		goto out_free_dev;
	} else if (reset_gpio) {
		data->reset_gpio = reset_gpio;
	}

	hdev->open   = btusb_open;
	hdev->close  = btusb_close;
	hdev->flush  = btusb_flush;
	hdev->send   = btusb_send_frame;
	hdev->notify = btusb_notify;

#ifdef CONFIG_PM
	err = btusb_config_oob_wake(hdev);
	if (err)
		goto out_free_dev;

	/* Marvell devices may need a specific chip configuration */
	if (id->driver_info & BTUSB_MARVELL && data->oob_wake_irq) {
		err = marvell_config_oob_wake(hdev);
		if (err)
			goto out_free_dev;
	}
#endif
	if (id->driver_info & BTUSB_CW6622)
		FUNC21(HCI_QUIRK_BROKEN_STORED_LINK_KEY, &hdev->quirks);

	if (id->driver_info & BTUSB_BCM2045)
		FUNC21(HCI_QUIRK_BROKEN_STORED_LINK_KEY, &hdev->quirks);

	if (id->driver_info & BTUSB_BCM92035)
		hdev->setup = btusb_setup_bcm92035;

#ifdef CONFIG_BT_HCIBTUSB_BCM
	if (id->driver_info & BTUSB_BCM_PATCHRAM) {
		hdev->manufacturer = 15;
		hdev->setup = btbcm_setup_patchram;
		hdev->set_diag = btusb_bcm_set_diag;
		hdev->set_bdaddr = btbcm_set_bdaddr;

		/* Broadcom LM_DIAG Interface numbers are hardcoded */
		data->diag = usb_ifnum_to_if(data->udev, ifnum_base + 2);
	}

	if (id->driver_info & BTUSB_BCM_APPLE) {
		hdev->manufacturer = 15;
		hdev->setup = btbcm_setup_apple;
		hdev->set_diag = btusb_bcm_set_diag;

		/* Broadcom LM_DIAG Interface numbers are hardcoded */
		data->diag = usb_ifnum_to_if(data->udev, ifnum_base + 2);
	}
#endif

	if (id->driver_info & BTUSB_INTEL) {
		hdev->manufacturer = 2;
		hdev->setup = btusb_setup_intel;
		hdev->shutdown = btusb_shutdown_intel;
		hdev->set_diag = btintel_set_diag_mfg;
		hdev->set_bdaddr = btintel_set_bdaddr;
		hdev->cmd_timeout = btusb_intel_cmd_timeout;
		FUNC21(HCI_QUIRK_STRICT_DUPLICATE_FILTER, &hdev->quirks);
		FUNC21(HCI_QUIRK_SIMULTANEOUS_DISCOVERY, &hdev->quirks);
		FUNC21(HCI_QUIRK_NON_PERSISTENT_DIAG, &hdev->quirks);
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
		FUNC21(HCI_QUIRK_STRICT_DUPLICATE_FILTER, &hdev->quirks);
		FUNC21(HCI_QUIRK_SIMULTANEOUS_DISCOVERY, &hdev->quirks);
		FUNC21(HCI_QUIRK_NON_PERSISTENT_DIAG, &hdev->quirks);
	}

	if (id->driver_info & BTUSB_MARVELL)
		hdev->set_bdaddr = btusb_set_bdaddr_marvell;

#ifdef CONFIG_BT_HCIBTUSB_MTK
	if (id->driver_info & BTUSB_MEDIATEK) {
		hdev->setup = btusb_mtk_setup;
		hdev->shutdown = btusb_mtk_shutdown;
		hdev->manufacturer = 70;
		set_bit(HCI_QUIRK_NON_PERSISTENT_SETUP, &hdev->quirks);
	}
#endif

	if (id->driver_info & BTUSB_SWAVE) {
		FUNC21(HCI_QUIRK_FIXUP_INQUIRY_MODE, &hdev->quirks);
		FUNC21(HCI_QUIRK_BROKEN_LOCAL_COMMANDS, &hdev->quirks);
	}

	if (id->driver_info & BTUSB_INTEL_BOOT) {
		hdev->manufacturer = 2;
		FUNC21(HCI_QUIRK_RAW_DEVICE, &hdev->quirks);
	}

	if (id->driver_info & BTUSB_ATH3012) {
		data->setup_on_usb = btusb_setup_qca;
		hdev->set_bdaddr = btusb_set_bdaddr_ath3012;
		FUNC21(HCI_QUIRK_SIMULTANEOUS_DISCOVERY, &hdev->quirks);
		FUNC21(HCI_QUIRK_STRICT_DUPLICATE_FILTER, &hdev->quirks);
	}

	if (id->driver_info & BTUSB_QCA_ROME) {
		data->setup_on_usb = btusb_setup_qca;
		hdev->set_bdaddr = btusb_set_bdaddr_ath3012;
		FUNC21(HCI_QUIRK_SIMULTANEOUS_DISCOVERY, &hdev->quirks);
		FUNC7(intf);
	}

#ifdef CONFIG_BT_HCIBTUSB_RTL
	if (id->driver_info & BTUSB_REALTEK) {
		hdev->setup = btrtl_setup_realtek;
		hdev->shutdown = btrtl_shutdown_realtek;
		hdev->cmd_timeout = btusb_rtl_cmd_timeout;

		/* Realtek devices lose their updated firmware over global
		 * suspend that means host doesn't send SET_FEATURE
		 * (DEVICE_REMOTE_WAKEUP)
		 */
		set_bit(BTUSB_WAKEUP_DISABLE, &data->flags);
	}
#endif

	if (id->driver_info & BTUSB_AMP) {
		/* AMP controllers do not support SCO packets */
		data->isoc = NULL;
	} else {
		/* Interface orders are hardcoded in the specification */
		data->isoc = FUNC28(data->udev, ifnum_base + 1);
		data->isoc_ifnum = ifnum_base + 1;
	}

	if (!reset)
		FUNC21(HCI_QUIRK_RESET_ON_CLOSE, &hdev->quirks);

	if (force_scofix || id->driver_info & BTUSB_WRONG_SCO_MTU) {
		if (!disable_scofix)
			FUNC21(HCI_QUIRK_FIXUP_BUFFER_SIZE, &hdev->quirks);
	}

	if (id->driver_info & BTUSB_BROKEN_ISOC)
		data->isoc = NULL;

	if (id->driver_info & BTUSB_DIGIANSWER) {
		data->cmdreq_type = USB_TYPE_VENDOR;
		FUNC21(HCI_QUIRK_RESET_ON_CLOSE, &hdev->quirks);
	}

	if (id->driver_info & BTUSB_CSR) {
		struct usb_device *udev = data->udev;
		u16 bcdDevice = FUNC19(udev->descriptor.bcdDevice);

		/* Old firmware would otherwise execute USB reset */
		if (bcdDevice < 0x117)
			FUNC21(HCI_QUIRK_RESET_ON_CLOSE, &hdev->quirks);

		/* Fake CSR devices with broken commands */
		if (bcdDevice <= 0x100 || bcdDevice == 0x134)
			hdev->setup = btusb_setup_csr;

		FUNC21(HCI_QUIRK_SIMULTANEOUS_DISCOVERY, &hdev->quirks);
	}

	if (id->driver_info & BTUSB_SNIFFER) {
		struct usb_device *udev = data->udev;

		/* New sniffer firmware has crippled HCI interface */
		if (FUNC19(udev->descriptor.bcdDevice) > 0x997)
			FUNC21(HCI_QUIRK_RAW_DEVICE, &hdev->quirks);
	}

	if (id->driver_info & BTUSB_INTEL_BOOT) {
		/* A bug in the bootloader causes that interrupt interface is
		 * only enabled after receiving SetInterface(0, AltSetting=0).
		 */
		err = FUNC30(data->udev, 0, 0);
		if (err < 0) {
			FUNC1("failed to set interface 0, alt 0 %d", err);
			goto out_free_dev;
		}
	}

	if (data->isoc) {
		err = FUNC23(&btusb_driver,
						 data->isoc, data);
		if (err < 0)
			goto out_free_dev;
	}

#ifdef CONFIG_BT_HCIBTUSB_BCM
	if (data->diag) {
		if (!usb_driver_claim_interface(&btusb_driver,
						data->diag, data))
			__set_diag_interface(hdev);
		else
			data->diag = NULL;
	}
#endif

	if (enable_autosuspend)
		FUNC24(data->udev);

	err = FUNC15(hdev);
	if (err < 0)
		goto out_free_dev;

	FUNC31(intf, data);

	return 0;

out_free_dev:
	if (data->reset_gpio)
		FUNC12(data->reset_gpio);
	FUNC14(hdev);
	return err;
}