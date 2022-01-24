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
struct hci_uart {int /*<<< orphan*/  tx_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCI_UART_SENDING ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC2(struct hci_uart *hu)
{
	return FUNC1(&hu->tx_state, HCI_UART_SENDING,
				   TASK_INTERRUPTIBLE,
				   FUNC0(2000));
}