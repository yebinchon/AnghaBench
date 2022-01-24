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
struct TYPE_2__ {int /*<<< orphan*/  id; } ;
struct bcma_device {int dev_registered; int /*<<< orphan*/  dev; TYPE_1__ id; } ;
struct bcma_bus {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bcma_bus*,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct bcma_bus *bus, struct bcma_device *core)
{
	int err;

	err = FUNC1(&core->dev);
	if (err) {
		FUNC0(bus, "Could not register dev for core 0x%03X\n",
			 core->id.id);
		FUNC2(&core->dev);
		return;
	}
	core->dev_registered = true;
}