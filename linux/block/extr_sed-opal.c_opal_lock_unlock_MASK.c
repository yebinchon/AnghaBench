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
struct TYPE_2__ {scalar_t__ who; } ;
struct opal_lock_unlock {TYPE_1__ session; } ;
struct opal_dev {int /*<<< orphan*/  dev_lock; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ OPAL_USER9 ; 
 int FUNC0 (struct opal_dev*,struct opal_lock_unlock*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct opal_dev *dev,
			    struct opal_lock_unlock *lk_unlk)
{
	int ret;

	if (lk_unlk->session.who > OPAL_USER9)
		return -EINVAL;

	FUNC1(&dev->dev_lock);
	ret = FUNC0(dev, lk_unlk);
	FUNC2(&dev->dev_lock);

	return ret;
}