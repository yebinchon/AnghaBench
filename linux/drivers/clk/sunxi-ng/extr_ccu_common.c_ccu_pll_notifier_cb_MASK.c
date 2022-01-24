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
struct notifier_block {int dummy; } ;
struct ccu_pll_nb {int /*<<< orphan*/  lock; int /*<<< orphan*/  common; int /*<<< orphan*/  enable; } ;

/* Variables and functions */
 unsigned long POST_RATE_CHANGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int) ; 
 struct ccu_pll_nb* FUNC4 (struct notifier_block*) ; 

__attribute__((used)) static int FUNC5(struct notifier_block *nb,
			       unsigned long event, void *data)
{
	struct ccu_pll_nb *pll = FUNC4(nb);
	int ret = 0;

	if (event != POST_RATE_CHANGE)
		goto out;

	FUNC0(pll->common, pll->enable);

	ret = FUNC1(pll->common, pll->enable);
	if (ret)
		goto out;

	FUNC2(pll->common, pll->lock);

out:
	return FUNC3(ret);
}