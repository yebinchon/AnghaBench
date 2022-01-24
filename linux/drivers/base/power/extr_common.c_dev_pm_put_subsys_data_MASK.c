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
struct pm_subsys_data {scalar_t__ refcount; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/ * subsys_data; } ;
struct device {TYPE_1__ power; } ;

/* Variables and functions */
 struct pm_subsys_data* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct pm_subsys_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct device *dev)
{
	struct pm_subsys_data *psd;

	FUNC2(&dev->power.lock);

	psd = FUNC0(dev);
	if (!psd)
		goto out;

	if (--psd->refcount == 0)
		dev->power.subsys_data = NULL;
	else
		psd = NULL;

 out:
	FUNC3(&dev->power.lock);
	FUNC1(psd);
}