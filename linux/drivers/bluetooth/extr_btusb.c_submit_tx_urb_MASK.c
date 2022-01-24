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
struct urb {int /*<<< orphan*/  setup_packet; } ;
struct hci_dev {int dummy; } ;
struct btusb_data {int /*<<< orphan*/  udev; int /*<<< orphan*/  tx_anchor; } ;

/* Variables and functions */
 int ENODEV ; 
 int EPERM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct hci_dev*,char*,struct urb*,int) ; 
 struct btusb_data* FUNC1 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct urb*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct urb*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct urb*) ; 

__attribute__((used)) static int FUNC8(struct hci_dev *hdev, struct urb *urb)
{
	struct btusb_data *data = FUNC1(hdev);
	int err;

	FUNC3(urb, &data->tx_anchor);

	err = FUNC6(urb, GFP_KERNEL);
	if (err < 0) {
		if (err != -EPERM && err != -ENODEV)
			FUNC0(hdev, "urb %p submission failed (%d)",
				   urb, -err);
		FUNC2(urb->setup_packet);
		FUNC7(urb);
	} else {
		FUNC5(data->udev);
	}

	FUNC4(urb);
	return err;
}