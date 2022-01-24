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
struct serdev_device {int dummy; } ;
struct hci_uart {int /*<<< orphan*/  flags; struct serdev_device* serdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  HCI_UART_PROTO_READY ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_uart*) ; 
 struct hci_uart* FUNC3 (struct serdev_device*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct serdev_device *serdev)
{
	struct hci_uart *hu = FUNC3(serdev);

	FUNC0("");

	if (!hu || serdev != hu->serdev) {
		FUNC1(1);
		return;
	}

	if (FUNC4(HCI_UART_PROTO_READY, &hu->flags))
		FUNC2(hu);
}