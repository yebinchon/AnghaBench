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
struct master {int dummy; } ;
struct device {int dummy; } ;
struct component_master_ops {int dummy; } ;

/* Variables and functions */
 struct master* FUNC0 (struct device*,struct component_master_ops const*) ; 
 int /*<<< orphan*/  component_mutex ; 
 int /*<<< orphan*/  FUNC1 (struct master*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct master*) ; 

void FUNC5(struct device *dev,
	const struct component_master_ops *ops)
{
	struct master *master;

	FUNC2(&component_mutex);
	master = FUNC0(dev, ops);
	if (master) {
		FUNC4(master);
		FUNC1(master);
	}
	FUNC3(&component_mutex);
}