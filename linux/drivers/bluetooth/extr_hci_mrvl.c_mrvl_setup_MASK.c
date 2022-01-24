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
struct hci_uart {int /*<<< orphan*/  hdev; scalar_t__ serdev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct hci_uart*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_uart*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_uart*) ; 
 int FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int) ; 

__attribute__((used)) static int FUNC6(struct hci_uart *hu)
{
	int err;

	FUNC2(hu, true);

	err = FUNC4(hu->hdev, "mrvl/helper_uart_3000000.bin");
	if (err) {
		FUNC0(hu->hdev, "Unable to download firmware helper");
		return -EINVAL;
	}

	/* Let the final ack go out before switching the baudrate */
	FUNC3(hu);

	if (hu->serdev)
		FUNC5(hu->serdev, 3000000);
	else
		FUNC1(hu, 3000000);

	FUNC2(hu, false);

	err = FUNC4(hu->hdev, "mrvl/uart8897_bt.bin");
	if (err)
		return err;

	return 0;
}