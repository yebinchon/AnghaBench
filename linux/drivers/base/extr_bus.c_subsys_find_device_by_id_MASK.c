#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct klist_iter {int dummy; } ;
struct device {unsigned int id; TYPE_1__* p; } ;
struct bus_type {TYPE_2__* p; } ;
struct TYPE_4__ {int /*<<< orphan*/  klist_devices; } ;
struct TYPE_3__ {int /*<<< orphan*/  knode_bus; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct klist_iter*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct klist_iter*,int /*<<< orphan*/ *) ; 
 struct device* FUNC3 (struct klist_iter*) ; 

struct device *FUNC4(struct bus_type *subsys, unsigned int id,
					struct device *hint)
{
	struct klist_iter i;
	struct device *dev;

	if (!subsys)
		return NULL;

	if (hint) {
		FUNC2(&subsys->p->klist_devices, &i, &hint->p->knode_bus);
		dev = FUNC3(&i);
		if (dev && dev->id == id && FUNC0(dev)) {
			FUNC1(&i);
			return dev;
		}
		FUNC1(&i);
	}

	FUNC2(&subsys->p->klist_devices, &i, NULL);
	while ((dev = FUNC3(&i))) {
		if (dev->id == id && FUNC0(dev)) {
			FUNC1(&i);
			return dev;
		}
	}
	FUNC1(&i);
	return NULL;
}