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
struct tty_struct {int dummy; } ;
struct hci_uart {int /*<<< orphan*/  proto_lock; TYPE_1__* proto; int /*<<< orphan*/  flags; int /*<<< orphan*/ * tx_skb; struct tty_struct* tty; } ;
struct hci_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* flush ) (struct hci_uart*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct hci_dev*,struct tty_struct*) ; 
 int /*<<< orphan*/  HCI_UART_PROTO_READY ; 
 struct hci_uart* FUNC1 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_uart*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC8 (struct tty_struct*) ; 

__attribute__((used)) static int FUNC9(struct hci_dev *hdev)
{
	struct hci_uart *hu  = FUNC1(hdev);
	struct tty_struct *tty = hu->tty;

	FUNC0("hdev %p tty %p", hdev, tty);

	if (hu->tx_skb) {
		FUNC2(hu->tx_skb); hu->tx_skb = NULL;
	}

	/* Flush any pending characters in the driver and discipline. */
	FUNC8(tty);
	FUNC7(tty);

	FUNC3(&hu->proto_lock);

	if (FUNC6(HCI_UART_PROTO_READY, &hu->flags))
		hu->proto->flush(hu);

	FUNC4(&hu->proto_lock);

	return 0;
}