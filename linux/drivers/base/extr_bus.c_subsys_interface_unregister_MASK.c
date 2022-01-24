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
struct subsys_interface {int /*<<< orphan*/  (* remove_dev ) (struct device*,struct subsys_interface*) ;int /*<<< orphan*/  node; struct bus_type* subsys; } ;
struct subsys_dev_iter {int dummy; } ;
struct device {int dummy; } ;
struct bus_type {TYPE_1__* p; } ;
struct TYPE_2__ {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bus_type*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,struct subsys_interface*) ; 
 int /*<<< orphan*/  FUNC5 (struct subsys_dev_iter*) ; 
 int /*<<< orphan*/  FUNC6 (struct subsys_dev_iter*,struct bus_type*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct device* FUNC7 (struct subsys_dev_iter*) ; 

void FUNC8(struct subsys_interface *sif)
{
	struct bus_type *subsys;
	struct subsys_dev_iter iter;
	struct device *dev;

	if (!sif || !sif->subsys)
		return;

	subsys = sif->subsys;

	FUNC2(&subsys->p->mutex);
	FUNC1(&sif->node);
	if (sif->remove_dev) {
		FUNC6(&iter, subsys, NULL, NULL);
		while ((dev = FUNC7(&iter)))
			sif->remove_dev(dev, sif);
		FUNC5(&iter);
	}
	FUNC3(&subsys->p->mutex);

	FUNC0(subsys);
}