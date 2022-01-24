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
struct hci_uart {int /*<<< orphan*/  init_ready; int /*<<< orphan*/  hdev_flags; } ;

/* Variables and functions */
 int EALREADY ; 
 int /*<<< orphan*/  HCI_UART_INIT_PENDING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC2(struct hci_uart *hu)
{
	if (!FUNC1(HCI_UART_INIT_PENDING, &hu->hdev_flags))
		return -EALREADY;

	FUNC0(&hu->init_ready);

	return 0;
}