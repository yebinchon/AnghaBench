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
struct nullb_device {int power; int /*<<< orphan*/  nullb; int /*<<< orphan*/  flags; } ;
struct config_item {int dummy; } ;
struct config_group {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NULLB_DEV_FL_UP ; 
 int /*<<< orphan*/  FUNC0 (struct config_item*) ; 
 int /*<<< orphan*/  lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct nullb_device* FUNC5 (struct config_item*) ; 

__attribute__((used)) static void
FUNC6(struct config_group *group, struct config_item *item)
{
	struct nullb_device *dev = FUNC5(item);

	if (FUNC4(NULLB_DEV_FL_UP, &dev->flags)) {
		FUNC1(&lock);
		dev->power = false;
		FUNC3(dev->nullb);
		FUNC2(&lock);
	}

	FUNC0(item);
}