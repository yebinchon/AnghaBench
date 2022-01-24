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
struct hci_uart {struct ath_struct* priv; } ;
struct ath_struct {int /*<<< orphan*/  txq; } ;

/* Variables and functions */
 struct sk_buff* FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct sk_buff *FUNC1(struct hci_uart *hu)
{
	struct ath_struct *ath = hu->priv;

	return FUNC0(&ath->txq);
}