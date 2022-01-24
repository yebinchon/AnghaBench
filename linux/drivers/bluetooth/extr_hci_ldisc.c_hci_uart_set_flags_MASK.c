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
struct hci_uart {unsigned long hdev_flags; } ;

/* Variables and functions */
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  HCI_UART_CREATE_AMP ; 
 int /*<<< orphan*/  HCI_UART_EXT_CONFIG ; 
 int /*<<< orphan*/  HCI_UART_INIT_PENDING ; 
 int /*<<< orphan*/  HCI_UART_RAW_DEVICE ; 
 int /*<<< orphan*/  HCI_UART_RESET_ON_INIT ; 
 int /*<<< orphan*/  HCI_UART_VND_DETECT ; 

__attribute__((used)) static int FUNC1(struct hci_uart *hu, unsigned long flags)
{
	unsigned long valid_flags = FUNC0(HCI_UART_RAW_DEVICE) |
				    FUNC0(HCI_UART_RESET_ON_INIT) |
				    FUNC0(HCI_UART_CREATE_AMP) |
				    FUNC0(HCI_UART_INIT_PENDING) |
				    FUNC0(HCI_UART_EXT_CONFIG) |
				    FUNC0(HCI_UART_VND_DETECT);

	if (flags & ~valid_flags)
		return -EINVAL;

	hu->hdev_flags = flags;

	return 0;
}