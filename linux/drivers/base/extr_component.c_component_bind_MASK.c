#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct master {int /*<<< orphan*/  dev; } ;
struct component {int bound; TYPE_1__* ops; int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int (* bind ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ;} ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static int FUNC9(struct component *component, struct master *master,
	void *data)
{
	int ret;

	/*
	 * Each component initialises inside its own devres group.
	 * This allows us to roll-back a failed component without
	 * affecting anything else.
	 */
	if (!FUNC5(master->dev, NULL, GFP_KERNEL))
		return -ENOMEM;

	/*
	 * Also open a group for the device itself: this allows us
	 * to release the resources claimed against the sub-device
	 * at the appropriate moment.
	 */
	if (!FUNC5(component->dev, component, GFP_KERNEL)) {
		FUNC6(master->dev, NULL);
		return -ENOMEM;
	}

	FUNC0(master->dev, "binding %s (ops %ps)\n",
		FUNC3(component->dev), component->ops);

	ret = component->ops->bind(component->dev, master->dev, data);
	if (!ret) {
		component->bound = true;

		/*
		 * Close the component device's group so that resources
		 * allocated in the binding are encapsulated for removal
		 * at unbind.  Remove the group on the DRM device as we
		 * can clean those resources up independently.
		 */
		FUNC4(component->dev, NULL);
		FUNC7(master->dev, NULL);

		FUNC2(master->dev, "bound %s (ops %ps)\n",
			 FUNC3(component->dev), component->ops);
	} else {
		FUNC6(component->dev, NULL);
		FUNC6(master->dev, NULL);

		FUNC1(master->dev, "failed to bind %s (ops %ps): %d\n",
			FUNC3(component->dev), component->ops, ret);
	}

	return ret;
}