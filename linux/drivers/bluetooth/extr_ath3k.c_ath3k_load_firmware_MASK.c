#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct usb_device {int dummy; } ;
struct firmware {int size; scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct usb_device*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  BULK_SIZE ; 
 int ENOMEM ; 
 int FW_HDR_SIZE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  TIMEGAP_USEC_MAX ; 
 int /*<<< orphan*/  TIMEGAP_USEC_MIN ; 
 int /*<<< orphan*/  USB_CTRL_SET_TIMEOUT ; 
 int /*<<< orphan*/  USB_REQ_DFU_DNLOAD ; 
 int /*<<< orphan*/  USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC2 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  uint ; 
 int FUNC7 (struct usb_device*,int,int /*<<< orphan*/ *,int,int*,int) ; 
 int FUNC8 (struct usb_device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct usb_device*,int) ; 
 int FUNC10 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct usb_device *udev,
				const struct firmware *firmware)
{
	u8 *send_buf;
	int len = 0;
	int err, pipe, size, sent = 0;
	int count = firmware->size;

	FUNC0("udev %p", udev);

	pipe = FUNC10(udev, 0);

	send_buf = FUNC4(BULK_SIZE, GFP_KERNEL);
	if (!send_buf) {
		FUNC1("Can't allocate memory chunk for firmware");
		return -ENOMEM;
	}

	FUNC5(send_buf, firmware->data, FW_HDR_SIZE);
	err = FUNC8(udev, pipe, USB_REQ_DFU_DNLOAD, USB_TYPE_VENDOR,
			      0, 0, send_buf, FW_HDR_SIZE,
			      USB_CTRL_SET_TIMEOUT);
	if (err < 0) {
		FUNC1("Can't change to loading configuration err");
		goto error;
	}
	sent += FW_HDR_SIZE;
	count -= FW_HDR_SIZE;

	pipe = FUNC9(udev, 0x02);

	while (count) {
		/* workaround the compatibility issue with xHCI controller*/
		FUNC11(TIMEGAP_USEC_MIN, TIMEGAP_USEC_MAX);

		size = FUNC6(uint, count, BULK_SIZE);
		FUNC5(send_buf, firmware->data + sent, size);

		err = FUNC7(udev, pipe, send_buf, size,
					&len, 3000);

		if (err || (len != size)) {
			FUNC2(err, len, size, count);
			goto error;
		}

		sent  += size;
		count -= size;
	}

error:
	FUNC3(send_buf);
	return err;
}