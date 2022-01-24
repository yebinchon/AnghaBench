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
struct tty_struct {struct hci_uart* disc_data; } ;
struct hci_uart {int /*<<< orphan*/  proto_lock; int /*<<< orphan*/  flags; TYPE_1__* proto; int /*<<< orphan*/  write_work; struct hci_dev* hdev; } ;
struct hci_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* close ) (struct hci_uart*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct tty_struct*) ; 
 int /*<<< orphan*/  HCI_UART_PROTO_READY ; 
 int /*<<< orphan*/  HCI_UART_PROTO_SET ; 
 int /*<<< orphan*/  HCI_UART_REGISTERED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct hci_uart*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct hci_uart*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC12(struct tty_struct *tty)
{
	struct hci_uart *hu = tty->disc_data;
	struct hci_dev *hdev;

	FUNC0("tty %p", tty);

	/* Detach from the tty */
	tty->disc_data = NULL;

	if (!hu)
		return;

	hdev = hu->hdev;
	if (hdev)
		FUNC4(hdev);

	if (FUNC11(HCI_UART_PROTO_READY, &hu->flags)) {
		FUNC7(&hu->proto_lock);
		FUNC2(HCI_UART_PROTO_READY, &hu->flags);
		FUNC9(&hu->proto_lock);

		FUNC1(&hu->write_work);

		if (hdev) {
			if (FUNC11(HCI_UART_REGISTERED, &hu->flags))
				FUNC5(hdev);
			FUNC3(hdev);
		}
		hu->proto->close(hu);
	}
	FUNC2(HCI_UART_PROTO_SET, &hu->flags);

	FUNC8(&hu->proto_lock);

	FUNC6(hu);
}