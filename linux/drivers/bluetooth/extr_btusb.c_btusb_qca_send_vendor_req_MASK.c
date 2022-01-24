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
typedef  int /*<<< orphan*/  u16 ;
struct usb_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  USB_CTRL_SET_TIMEOUT ; 
 int USB_DIR_IN ; 
 int USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct usb_device*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct usb_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct usb_device *udev, u8 request,
				     void *data, u16 size)
{
	int pipe, err;
	u8 *buf;

	buf = FUNC2(size, GFP_KERNEL);
	if (!buf)
		return -ENOMEM;

	/* Found some of USB hosts have IOT issues with ours so that we should
	 * not wait until HCI layer is ready.
	 */
	pipe = FUNC5(udev, 0);
	err = FUNC4(udev, pipe, request, USB_TYPE_VENDOR | USB_DIR_IN,
			      0, 0, buf, size, USB_CTRL_SET_TIMEOUT);
	if (err < 0) {
		FUNC0(&udev->dev, "Failed to access otp area (%d)", err);
		goto done;
	}

	FUNC3(data, buf, size);

done:
	FUNC1(buf);

	return err;
}