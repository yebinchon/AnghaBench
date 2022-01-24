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
struct hci_uart {struct ath_struct* priv; } ;
struct ath_struct {int /*<<< orphan*/  ctxtsw; int /*<<< orphan*/  rx_skb; int /*<<< orphan*/  txq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct hci_uart*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_struct*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct hci_uart *hu)
{
	struct ath_struct *ath = hu->priv;

	FUNC0("hu %p", hu);

	FUNC4(&ath->txq);

	FUNC3(ath->rx_skb);

	FUNC1(&ath->ctxtsw);

	hu->priv = NULL;
	FUNC2(ath);

	return 0;
}