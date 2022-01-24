#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct bfusb_data {TYPE_1__* udev; int /*<<< orphan*/  bulk_out_ep; } ;
struct TYPE_6__ {scalar_t__* toggle; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFUSB_BLOCK_TIMEOUT ; 
 scalar_t__ BFUSB_MAX_BLOCK_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,struct bfusb_data*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int EBUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  USB_CTRL_SET_TIMEOUT ; 
 int /*<<< orphan*/  USB_REQ_SET_CONFIGURATION ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*) ; 
 unsigned char* FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,unsigned char const*,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int,scalar_t__) ; 
 int /*<<< orphan*/  uint ; 
 int FUNC7 (TYPE_1__*,int,unsigned char*,int,int*,int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC10 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct bfusb_data *data,
			       const unsigned char *firmware, int count)
{
	unsigned char *buf;
	int err, pipe, len, size, sent = 0;

	FUNC0("bfusb %p udev %p", data, data->udev);

	FUNC2("BlueFRITZ! USB loading firmware");

	buf = FUNC4(BFUSB_MAX_BLOCK_SIZE + 3, GFP_KERNEL);
	if (!buf) {
		FUNC1("Can't allocate memory chunk for firmware");
		return -ENOMEM;
	}

	pipe = FUNC10(data->udev, 0);

	if (FUNC8(data->udev, pipe, USB_REQ_SET_CONFIGURATION,
				0, 1, 0, NULL, 0, USB_CTRL_SET_TIMEOUT) < 0) {
		FUNC1("Can't change to loading configuration");
		FUNC3(buf);
		return -EBUSY;
	}

	data->udev->toggle[0] = data->udev->toggle[1] = 0;

	pipe = FUNC9(data->udev, data->bulk_out_ep);

	while (count) {
		size = FUNC6(uint, count, BFUSB_MAX_BLOCK_SIZE + 3);

		FUNC5(buf, firmware + sent, size);

		err = FUNC7(data->udev, pipe, buf, size,
					&len, BFUSB_BLOCK_TIMEOUT);

		if (err || (len != size)) {
			FUNC1("Error in firmware loading");
			goto error;
		}

		sent  += size;
		count -= size;
	}

	err = FUNC7(data->udev, pipe, NULL, 0,
					&len, BFUSB_BLOCK_TIMEOUT);
	if (err < 0) {
		FUNC1("Error in null packet request");
		goto error;
	}

	pipe = FUNC10(data->udev, 0);

	err = FUNC8(data->udev, pipe, USB_REQ_SET_CONFIGURATION,
				0, 2, 0, NULL, 0, USB_CTRL_SET_TIMEOUT);
	if (err < 0) {
		FUNC1("Can't change to running configuration");
		goto error;
	}

	data->udev->toggle[0] = data->udev->toggle[1] = 0;

	FUNC2("BlueFRITZ! USB device ready");

	FUNC3(buf);
	return 0;

error:
	FUNC3(buf);

	pipe = FUNC10(data->udev, 0);

	FUNC8(data->udev, pipe, USB_REQ_SET_CONFIGURATION,
				0, 0, 0, NULL, 0, USB_CTRL_SET_TIMEOUT);

	return err;
}