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
struct sk_buff {int dummy; } ;
struct hci_uart {struct sk_buff* tx_skb; int /*<<< orphan*/  proto_lock; TYPE_1__* proto; int /*<<< orphan*/  flags; } ;
struct TYPE_2__ {struct sk_buff* (* dequeue ) (struct hci_uart*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  HCI_UART_PROTO_READY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct sk_buff* FUNC2 (struct hci_uart*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline struct sk_buff *FUNC4(struct hci_uart *hu)
{
	struct sk_buff *skb = hu->tx_skb;

	if (!skb) {
		FUNC0(&hu->proto_lock);

		if (FUNC3(HCI_UART_PROTO_READY, &hu->flags))
			skb = hu->proto->dequeue(hu);

		FUNC1(&hu->proto_lock);
	} else {
		hu->tx_skb = NULL;
	}

	return skb;
}