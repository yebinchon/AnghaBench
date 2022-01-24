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
struct sk_buff {int len; } ;
struct nokia_bt_dev {int /*<<< orphan*/  txq; } ;
struct hci_uart {struct nokia_bt_dev* priv; } ;
struct TYPE_2__ {int /*<<< orphan*/  pkt_type; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct sk_buff*) ; 

__attribute__((used)) static int FUNC6(struct hci_uart *hu, struct sk_buff *skb)
{
	struct nokia_bt_dev *btdev = hu->priv;
	int err;

	/* Prepend skb with frame type */
	FUNC1(FUNC3(skb, 1), &FUNC0(skb)->pkt_type, 1);

	/* Packets must be word aligned */
	if (skb->len % 2) {
		err = FUNC2(skb, 1);
		if (err)
			return err;
		FUNC4(skb, 0x00);
	}

	FUNC5(&btdev->txq, skb);

	return 0;
}