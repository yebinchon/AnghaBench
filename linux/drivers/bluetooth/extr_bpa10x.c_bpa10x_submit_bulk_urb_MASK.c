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
struct urb {int /*<<< orphan*/  transfer_flags; } ;
struct hci_dev {int /*<<< orphan*/  name; } ;
struct bpa10x_data {int /*<<< orphan*/  rx_anchor; int /*<<< orphan*/  udev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  URB_FREE_BUFFER ; 
 int /*<<< orphan*/  bpa10x_rx_complete ; 
 int /*<<< orphan*/  FUNC1 (struct hci_dev*,char*,struct urb*,int) ; 
 struct bpa10x_data* FUNC2 (struct hci_dev*) ; 
 unsigned char* FUNC3 (int,int /*<<< orphan*/ ) ; 
 struct urb* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct urb*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct urb*,int /*<<< orphan*/ ,unsigned int,unsigned char*,int,int /*<<< orphan*/ ,struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct urb*) ; 
 unsigned int FUNC8 (int /*<<< orphan*/ ,int) ; 
 int FUNC9 (struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct urb*) ; 

__attribute__((used)) static inline int FUNC11(struct hci_dev *hdev)
{
	struct bpa10x_data *data = FUNC2(hdev);
	struct urb *urb;
	unsigned char *buf;
	unsigned int pipe;
	int err, size = 64;

	FUNC0("%s", hdev->name);

	urb = FUNC4(0, GFP_KERNEL);
	if (!urb)
		return -ENOMEM;

	buf = FUNC3(size, GFP_KERNEL);
	if (!buf) {
		FUNC7(urb);
		return -ENOMEM;
	}

	pipe = FUNC8(data->udev, 0x82);

	FUNC6(urb, data->udev, pipe,
					buf, size, bpa10x_rx_complete, hdev);

	urb->transfer_flags |= URB_FREE_BUFFER;

	FUNC5(urb, &data->rx_anchor);

	err = FUNC9(urb, GFP_KERNEL);
	if (err < 0) {
		FUNC1(hdev, "urb %p submission failed (%d)", urb, -err);
		FUNC10(urb);
	}

	FUNC7(urb);

	return err;
}