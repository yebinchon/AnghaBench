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
struct agp_bridge_data {TYPE_1__* driver; int /*<<< orphan*/  list; } ;
struct TYPE_2__ {int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct agp_bridge_data*) ; 
 int /*<<< orphan*/  agp_bridges ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(struct agp_bridge_data *bridge)
{
	FUNC0(bridge);
	FUNC2(&bridge->list);
	if (FUNC3(&agp_bridges))
		FUNC1();
	FUNC4(bridge->driver->owner);
}