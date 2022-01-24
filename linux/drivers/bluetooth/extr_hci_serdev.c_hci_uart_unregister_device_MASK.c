#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct hci_uart {int /*<<< orphan*/  serdev; TYPE_1__* proto; int /*<<< orphan*/  write_work; int /*<<< orphan*/  flags; struct hci_dev* hdev; } ;
struct hci_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* close ) (struct hci_uart*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  HCI_UART_PROTO_READY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_uart*) ; 

void FUNC6(struct hci_uart *hu)
{
	struct hci_dev *hdev = hu->hdev;

	FUNC1(HCI_UART_PROTO_READY, &hu->flags);
	FUNC3(hdev);
	FUNC2(hdev);

	FUNC0(&hu->write_work);

	hu->proto->close(hu);
	FUNC4(hu->serdev);
}