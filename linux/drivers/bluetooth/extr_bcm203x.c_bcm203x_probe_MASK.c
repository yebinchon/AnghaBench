#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct usb_interface {int /*<<< orphan*/  dev; TYPE_2__* cur_altsetting; } ;
struct usb_device_id {int dummy; } ;
struct usb_device {int /*<<< orphan*/  dev; } ;
struct firmware {struct usb_device_id const* size; struct usb_interface* data; } ;
struct bcm203x_data {int /*<<< orphan*/  work; scalar_t__ fw_sent; struct usb_device_id const* fw_size; int /*<<< orphan*/  buffer; int /*<<< orphan*/  urb; int /*<<< orphan*/  fw_data; int /*<<< orphan*/  state; struct usb_device* udev; } ;
struct TYPE_3__ {scalar_t__ bInterfaceNumber; } ;
struct TYPE_4__ {TYPE_1__ desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCM203X_LOAD_MINIDRV ; 
 int /*<<< orphan*/  BCM203X_OUT_EP ; 
 int /*<<< orphan*/  FUNC0 (char*,struct usb_interface*,struct usb_device_id const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int EIO ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bcm203x_complete ; 
 int /*<<< orphan*/  bcm203x_work ; 
 struct bcm203x_data* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct usb_device* FUNC4 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_interface*,struct usb_device_id const*,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,struct usb_device_id const*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct usb_interface*,struct usb_device_id const*) ; 
 int /*<<< orphan*/  FUNC10 (struct firmware const*) ; 
 scalar_t__ FUNC11 (struct firmware const**,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  uint ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct usb_device_id const*,int /*<<< orphan*/ ,struct bcm203x_data*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct usb_interface*,struct bcm203x_data*) ; 
 int /*<<< orphan*/  FUNC17 (struct usb_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC18(struct usb_interface *intf, const struct usb_device_id *id)
{
	const struct firmware *firmware;
	struct usb_device *udev = FUNC4(intf);
	struct bcm203x_data *data;
	int size;

	FUNC0("intf %p id %p", intf, id);

	if (intf->cur_altsetting->desc.bInterfaceNumber != 0)
		return -ENODEV;

	data = FUNC3(&intf->dev, sizeof(*data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	data->udev  = udev;
	data->state = BCM203X_LOAD_MINIDRV;

	data->urb = FUNC13(0, GFP_KERNEL);
	if (!data->urb)
		return -ENOMEM;

	if (FUNC11(&firmware, "BCM2033-MD.hex", &udev->dev) < 0) {
		FUNC1("Mini driver request failed");
		FUNC15(data->urb);
		return -EIO;
	}

	FUNC0("minidrv data %p size %zu", firmware->data, firmware->size);

	size = FUNC8(uint, firmware->size, 4096);

	data->buffer = FUNC6(size, GFP_KERNEL);
	if (!data->buffer) {
		FUNC1("Can't allocate memory for mini driver");
		FUNC10(firmware);
		FUNC15(data->urb);
		return -ENOMEM;
	}

	FUNC9(data->buffer, firmware->data, firmware->size);

	FUNC14(data->urb, udev, FUNC17(udev, BCM203X_OUT_EP),
			data->buffer, firmware->size, bcm203x_complete, data);

	FUNC10(firmware);

	if (FUNC11(&firmware, "BCM2033-FW.bin", &udev->dev) < 0) {
		FUNC1("Firmware request failed");
		FUNC15(data->urb);
		FUNC5(data->buffer);
		return -EIO;
	}

	FUNC0("firmware data %p size %zu", firmware->data, firmware->size);

	data->fw_data = FUNC7(firmware->data, firmware->size, GFP_KERNEL);
	if (!data->fw_data) {
		FUNC1("Can't allocate memory for firmware image");
		FUNC10(firmware);
		FUNC15(data->urb);
		FUNC5(data->buffer);
		return -ENOMEM;
	}

	data->fw_size = firmware->size;
	data->fw_sent = 0;

	FUNC10(firmware);

	FUNC2(&data->work, bcm203x_work);

	FUNC16(intf, data);

	/* use workqueue to have a small delay */
	FUNC12(&data->work);

	return 0;
}