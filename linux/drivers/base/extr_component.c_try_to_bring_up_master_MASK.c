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
struct master {int bound; int /*<<< orphan*/  dev; TYPE_1__* ops; } ;
struct component {int /*<<< orphan*/  dev; struct master* master; } ;
struct TYPE_2__ {int (* bind ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct master*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct master *master,
	struct component *component)
{
	int ret;

	FUNC0(master->dev, "trying to bring up master\n");

	if (FUNC5(master)) {
		FUNC0(master->dev, "master has incomplete components\n");
		return 0;
	}

	if (component && component->master != master) {
		FUNC0(master->dev, "master is not for this component (%s)\n",
			FUNC2(component->dev));
		return 0;
	}

	if (!FUNC3(master->dev, NULL, GFP_KERNEL))
		return -ENOMEM;

	/* Found all components */
	ret = master->ops->bind(master->dev);
	if (ret < 0) {
		FUNC4(master->dev, NULL);
		FUNC1(master->dev, "master bind failed: %d\n", ret);
		return ret;
	}

	master->bound = true;
	return 1;
}