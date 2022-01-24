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
struct ath_struct {int /*<<< orphan*/  ctxtsw; struct hci_uart* hu; int /*<<< orphan*/  txq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct hci_uart*) ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ath_hci_uart_work ; 
 int /*<<< orphan*/  FUNC2 (struct hci_uart*) ; 
 struct ath_struct* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct hci_uart *hu)
{
	struct ath_struct *ath;

	FUNC0("hu %p", hu);

	if (!FUNC2(hu))
		return -EOPNOTSUPP;

	ath = FUNC3(sizeof(*ath), GFP_KERNEL);
	if (!ath)
		return -ENOMEM;

	FUNC4(&ath->txq);

	hu->priv = ath;
	ath->hu = hu;

	FUNC1(&ath->ctxtsw, ath_hci_uart_work);

	return 0;
}