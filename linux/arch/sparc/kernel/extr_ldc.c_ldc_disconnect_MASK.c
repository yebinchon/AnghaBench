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
struct TYPE_2__ {scalar_t__ mode; int /*<<< orphan*/  rx_irq; int /*<<< orphan*/  tx_irq; } ;
struct ldc_channel {int flags; int /*<<< orphan*/  lock; TYPE_1__ cfg; int /*<<< orphan*/  id; int /*<<< orphan*/  hs_state; int /*<<< orphan*/  rx_num_entries; int /*<<< orphan*/  rx_ra; int /*<<< orphan*/  tx_num_entries; int /*<<< orphan*/  tx_ra; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int LDC_FLAG_ALLOCED_QUEUES ; 
 int LDC_FLAG_REGISTERED_IRQS ; 
 int LDC_FLAG_REGISTERED_QUEUES ; 
 int LDC_FLAG_RESET ; 
 int /*<<< orphan*/  LDC_HS_OPEN ; 
 scalar_t__ LDC_MODE_RAW ; 
 int /*<<< orphan*/  LDC_STATE_BOUND ; 
 int /*<<< orphan*/  LDC_STATE_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct ldc_channel*) ; 
 int /*<<< orphan*/  FUNC1 (struct ldc_channel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned long FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned long FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC6(struct ldc_channel *lp)
{
	unsigned long hv_err, flags;
	int err;

	if (lp->cfg.mode == LDC_MODE_RAW)
		return -EINVAL;

	if (!(lp->flags & LDC_FLAG_ALLOCED_QUEUES) ||
	    !(lp->flags & LDC_FLAG_REGISTERED_QUEUES))
		return -EINVAL;

	FUNC2(&lp->lock, flags);

	err = -ENODEV;
	hv_err = FUNC5(lp->id, 0, 0);
	if (hv_err)
		goto out_err;

	hv_err = FUNC5(lp->id, lp->tx_ra, lp->tx_num_entries);
	if (hv_err)
		goto out_err;

	hv_err = FUNC4(lp->id, 0, 0);
	if (hv_err)
		goto out_err;

	hv_err = FUNC4(lp->id, lp->rx_ra, lp->rx_num_entries);
	if (hv_err)
		goto out_err;

	FUNC1(lp, LDC_STATE_BOUND);
	lp->hs_state = LDC_HS_OPEN;
	lp->flags |= LDC_FLAG_RESET;

	FUNC3(&lp->lock, flags);

	return 0;

out_err:
	FUNC5(lp->id, 0, 0);
	FUNC4(lp->id, 0, 0);
	FUNC0(lp->cfg.tx_irq, lp);
	FUNC0(lp->cfg.rx_irq, lp);
	lp->flags &= ~(LDC_FLAG_REGISTERED_IRQS |
		       LDC_FLAG_REGISTERED_QUEUES);
	FUNC1(lp, LDC_STATE_INIT);

	FUNC3(&lp->lock, flags);

	return err;
}