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
struct TYPE_2__ {scalar_t__ ignore_children; int /*<<< orphan*/  child_count; int /*<<< orphan*/  usage_count; } ;
struct device {TYPE_1__ power; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC1(struct device *dev)
{
	return FUNC0(&dev->power.usage_count) <= 1 &&
		(FUNC0(&dev->power.child_count) == 0 ||
		 dev->power.ignore_children);
}