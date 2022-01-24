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
struct ll_struct {int /*<<< orphan*/  hcill_state; int /*<<< orphan*/  hcill_lock; int /*<<< orphan*/  tx_wait_q; int /*<<< orphan*/  txq; } ;
struct ll_device {int /*<<< orphan*/  ext_clk; } ;
struct hci_uart {scalar_t__ serdev; struct ll_struct* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct hci_uart*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HCILL_AWAKE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct ll_struct* FUNC3 (int,int /*<<< orphan*/ ) ; 
 struct ll_device* FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct hci_uart *hu)
{
	struct ll_struct *ll;

	FUNC0("hu %p", hu);

	ll = FUNC3(sizeof(*ll), GFP_KERNEL);
	if (!ll)
		return -ENOMEM;

	FUNC5(&ll->txq);
	FUNC5(&ll->tx_wait_q);
	FUNC6(&ll->hcill_lock);

	ll->hcill_state = HCILL_AWAKE;

	hu->priv = ll;

	if (hu->serdev) {
		struct ll_device *lldev = FUNC4(hu->serdev);

		if (!FUNC1(lldev->ext_clk))
			FUNC2(lldev->ext_clk);
	}

	return 0;
}