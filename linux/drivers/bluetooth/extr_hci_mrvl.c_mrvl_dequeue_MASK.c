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
struct mrvl_data {int /*<<< orphan*/  rawq; int /*<<< orphan*/  txq; } ;
struct hci_uart {struct mrvl_data* priv; } ;
struct TYPE_2__ {int /*<<< orphan*/  pkt_type; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 struct sk_buff* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int) ; 

__attribute__((used)) static struct sk_buff *FUNC4(struct hci_uart *hu)
{
	struct mrvl_data *mrvl = hu->priv;
	struct sk_buff *skb;

	skb = FUNC2(&mrvl->txq);
	if (!skb) {
		/* Any raw data ? */
		skb = FUNC2(&mrvl->rawq);
	} else {
		/* Prepend skb with frame type */
		FUNC1(FUNC3(skb, 1), &FUNC0(skb)->pkt_type, 1);
	}

	return skb;
}