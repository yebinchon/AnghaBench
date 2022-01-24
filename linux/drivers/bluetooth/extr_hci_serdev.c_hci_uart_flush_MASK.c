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
struct hci_uart {TYPE_1__* proto; int /*<<< orphan*/  flags; int /*<<< orphan*/  serdev; int /*<<< orphan*/ * tx_skb; } ;
struct hci_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* flush ) (struct hci_uart*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HCI_UART_PROTO_READY ; 
 struct hci_uart* FUNC1 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_uart*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct hci_dev *hdev)
{
	struct hci_uart *hu  = FUNC1(hdev);

	FUNC0("hdev %p serdev %p", hdev, hu->serdev);

	if (hu->tx_skb) {
		FUNC2(hu->tx_skb); hu->tx_skb = NULL;
	}

	/* Flush any pending characters in the driver and discipline. */
	FUNC3(hu->serdev);

	if (FUNC5(HCI_UART_PROTO_READY, &hu->flags))
		hu->proto->flush(hu);

	return 0;
}