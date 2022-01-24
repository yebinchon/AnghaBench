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
struct nullb_device {int power; int /*<<< orphan*/  flags; int /*<<< orphan*/  nullb; } ;
struct config_item {int dummy; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 scalar_t__ ENOMEM ; 
 int /*<<< orphan*/  NULLB_DEV_FL_CONFIGURED ; 
 int /*<<< orphan*/  NULLB_DEV_FL_UP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct nullb_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct nullb_device* FUNC9 (struct config_item*) ; 

__attribute__((used)) static ssize_t FUNC10(struct config_item *item,
				     const char *page, size_t count)
{
	struct nullb_device *dev = FUNC9(item);
	bool newp = false;
	ssize_t ret;

	ret = FUNC5(&newp, page, count);
	if (ret < 0)
		return ret;

	if (!dev->power && newp) {
		if (FUNC8(NULLB_DEV_FL_UP, &dev->flags))
			return count;
		if (FUNC3(dev)) {
			FUNC0(NULLB_DEV_FL_UP, &dev->flags);
			return -ENOMEM;
		}

		FUNC6(NULLB_DEV_FL_CONFIGURED, &dev->flags);
		dev->power = newp;
	} else if (dev->power && !newp) {
		if (FUNC7(NULLB_DEV_FL_UP, &dev->flags)) {
			FUNC1(&lock);
			dev->power = newp;
			FUNC4(dev->nullb);
			FUNC2(&lock);
		}
		FUNC0(NULLB_DEV_FL_CONFIGURED, &dev->flags);
	}

	return count;
}