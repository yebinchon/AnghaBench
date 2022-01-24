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
 int /*<<< orphan*/  ATH3K_DNLOAD ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  BULK_SIZE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FW_HDR_SIZE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  TIMEGAP_USEC_MAX ; 
 int /*<<< orphan*/  TIMEGAP_USEC_MIN ; 
 int /*<<< orphan*/  USB_CTRL_SET_TIMEOUT ; 
 int /*<<< orphan*/  USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC1 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  uint ; 
 int FUNC6 (struct usb_device*,int,int /*<<< orphan*/ *,int,int*,int) ; 
 int FUNC7 (struct usb_device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct usb_device*,int) ; 
 int FUNC9 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct usb_device *udev,
		const struct firmware *firmware)
{
	u8 *send_buf;
	int len = 0;
	int err, pipe, size, count, sent = 0;
	int ret;

	count = firmware->size;

	send_buf = FUNC3(BULK_SIZE, GFP_KERNEL);
	if (!send_buf) {
		FUNC0("Can't allocate memory chunk for firmware");
		return -ENOMEM;
	}

	size = FUNC5(uint, count, FW_HDR_SIZE);
	FUNC4(send_buf, firmware->data, size);

	pipe = FUNC9(udev, 0);
	ret = FUNC7(udev, pipe, ATH3K_DNLOAD,
			USB_TYPE_VENDOR, 0, 0, send_buf,
			size, USB_CTRL_SET_TIMEOUT);
	if (ret < 0) {
		FUNC0("Can't change to loading configuration err");
		FUNC2(send_buf);
		return ret;
	}

	sent += size;
	count -= size;

	pipe = FUNC8(udev, 0x02);

	while (count) {
		/* workaround the compatibility issue with xHCI controller*/
		FUNC10(TIMEGAP_USEC_MIN, TIMEGAP_USEC_MAX);

		size = FUNC5(uint, count, BULK_SIZE);
		FUNC4(send_buf, firmware->data + sent, size);

		err = FUNC6(udev, pipe, send_buf, size,
					&len, 3000);
		if (err || (len != size)) {
			FUNC1(err, len, size, count);
			FUNC2(send_buf);
			return err;
		}
		sent  += size;
		count -= size;
	}

	FUNC2(send_buf);
	return 0;
}