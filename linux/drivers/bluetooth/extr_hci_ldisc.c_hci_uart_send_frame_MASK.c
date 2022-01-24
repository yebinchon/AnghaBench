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
struct sk_buff {int /*<<< orphan*/  len; } ;
struct hci_uart {int /*<<< orphan*/  proto_lock; TYPE_1__* proto; int /*<<< orphan*/  flags; } ;
struct hci_dev {int /*<<< orphan*/  name; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* enqueue ) (struct hci_uart*,struct sk_buff*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EUNATCH ; 
 int /*<<< orphan*/  HCI_UART_PROTO_READY ; 
 struct hci_uart* FUNC1 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_uart*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct hci_uart*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct hci_dev *hdev, struct sk_buff *skb)
{
	struct hci_uart *hu = FUNC1(hdev);

	FUNC0("%s: type %d len %d", hdev->name, FUNC2(skb),
	       skb->len);

	FUNC4(&hu->proto_lock);

	if (!FUNC7(HCI_UART_PROTO_READY, &hu->flags)) {
		FUNC5(&hu->proto_lock);
		return -EUNATCH;
	}

	hu->proto->enqueue(hu, skb);
	FUNC5(&hu->proto_lock);

	FUNC3(hu);

	return 0;
}