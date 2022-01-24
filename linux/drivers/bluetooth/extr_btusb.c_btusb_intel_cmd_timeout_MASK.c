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
struct hci_dev {int dummy; } ;
struct gpio_desc {int dummy; } ;
struct btusb_data {int cmd_timeout_cnt; int /*<<< orphan*/  flags; struct gpio_desc* reset_gpio; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTUSB_HW_RESET_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (struct hci_dev*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct gpio_desc*,int) ; 
 struct btusb_data* FUNC2 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct hci_dev *hdev)
{
	struct btusb_data *data = FUNC2(hdev);
	struct gpio_desc *reset_gpio = data->reset_gpio;

	if (++data->cmd_timeout_cnt < 5)
		return;

	if (!reset_gpio) {
		FUNC0(hdev, "No way to reset. Ignoring and continuing");
		return;
	}

	/*
	 * Toggle the hard reset line if the platform provides one. The reset
	 * is going to yank the device off the USB and then replug. So doing
	 * once is enough. The cleanup is handled correctly on the way out
	 * (standard USB disconnect), and the new device is detected cleanly
	 * and bound to the driver again like it should be.
	 */
	if (FUNC4(BTUSB_HW_RESET_ACTIVE, &data->flags)) {
		FUNC0(hdev, "last reset failed? Not resetting again");
		return;
	}

	FUNC0(hdev, "Initiating HW reset via gpio");
	FUNC1(reset_gpio, 1);
	FUNC3(100);
	FUNC1(reset_gpio, 0);
}