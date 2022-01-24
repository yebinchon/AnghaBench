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
struct sk_buff {int dummy; } ;
struct mrvl_data {int /*<<< orphan*/  txq; } ;
struct hci_uart {struct mrvl_data* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct sk_buff*) ; 

__attribute__((used)) static int FUNC1(struct hci_uart *hu, struct sk_buff *skb)
{
	struct mrvl_data *mrvl = hu->priv;

	FUNC0(&mrvl->txq, skb);
	return 0;
}