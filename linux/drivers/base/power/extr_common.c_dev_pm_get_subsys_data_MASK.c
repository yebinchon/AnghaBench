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
struct pm_subsys_data {int refcount; int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; struct pm_subsys_data* subsys_data; } ;
struct device {TYPE_1__ power; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct pm_subsys_data*) ; 
 struct pm_subsys_data* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct device *dev)
{
	struct pm_subsys_data *psd;

	psd = FUNC1(sizeof(*psd), GFP_KERNEL);
	if (!psd)
		return -ENOMEM;

	FUNC4(&dev->power.lock);

	if (dev->power.subsys_data) {
		dev->power.subsys_data->refcount++;
	} else {
		FUNC3(&psd->lock);
		psd->refcount = 1;
		dev->power.subsys_data = psd;
		FUNC2(dev);
		psd = NULL;
	}

	FUNC5(&dev->power.lock);

	/* kfree() verifies that its argument is nonzero. */
	FUNC0(psd);

	return 0;
}