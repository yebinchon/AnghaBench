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
struct hci_dev {int /*<<< orphan*/  quirks; } ;
struct btrtl_device_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCI_QUIRK_SIMULTANEOUS_DISCOVERY ; 
 scalar_t__ FUNC0 (struct btrtl_device_info*) ; 
 int FUNC1 (struct btrtl_device_info*) ; 
 int FUNC2 (struct hci_dev*,struct btrtl_device_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct btrtl_device_info*) ; 
 struct btrtl_device_info* FUNC4 (struct hci_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC6(struct hci_dev *hdev)
{
	struct btrtl_device_info *btrtl_dev;
	int ret;

	btrtl_dev = FUNC4(hdev, NULL);
	if (FUNC0(btrtl_dev))
		return FUNC1(btrtl_dev);

	ret = FUNC2(hdev, btrtl_dev);

	FUNC3(btrtl_dev);

	/* Enable controller to do both LE scan and BR/EDR inquiry
	 * simultaneously.
	 */
	FUNC5(HCI_QUIRK_SIMULTANEOUS_DISCOVERY, &hdev->quirks);

	return ret;
}