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
struct hci_uart_proto {int dummy; } ;
struct hci_uart {int /*<<< orphan*/  flags; struct hci_uart_proto const* proto; } ;

/* Variables and functions */
 int EPROTONOSUPPORT ; 
 int /*<<< orphan*/  HCI_UART_PROTO_READY ; 
 struct hci_uart_proto* FUNC0 (int) ; 
 int FUNC1 (struct hci_uart*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct hci_uart *hu, int id)
{
	const struct hci_uart_proto *p;
	int err;

	p = FUNC0(id);
	if (!p)
		return -EPROTONOSUPPORT;

	hu->proto = p;

	err = FUNC1(hu);
	if (err) {
		return err;
	}

	FUNC2(HCI_UART_PROTO_READY, &hu->flags);
	return 0;
}