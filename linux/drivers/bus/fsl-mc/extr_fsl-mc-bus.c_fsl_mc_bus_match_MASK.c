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
struct fsl_mc_driver {struct fsl_mc_device_id* match_id_table; } ;
struct fsl_mc_device_id {int vendor; int /*<<< orphan*/  obj_type; } ;
struct TYPE_2__ {int state; int vendor; int /*<<< orphan*/  type; } ;
struct fsl_mc_device {TYPE_1__ obj_desc; int /*<<< orphan*/  dev; } ;
struct device_driver {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int FSL_MC_OBJ_STATE_PLUGGED ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct fsl_mc_device* FUNC3 (struct device*) ; 
 struct fsl_mc_driver* FUNC4 (struct device_driver*) ; 

__attribute__((used)) static int FUNC5(struct device *dev, struct device_driver *drv)
{
	const struct fsl_mc_device_id *id;
	struct fsl_mc_device *mc_dev = FUNC3(dev);
	struct fsl_mc_driver *mc_drv = FUNC4(drv);
	bool found = false;

	if (!mc_drv->match_id_table)
		goto out;

	/*
	 * If the object is not 'plugged' don't match.
	 * Only exception is the root DPRC, which is a special case.
	 */
	if ((mc_dev->obj_desc.state & FSL_MC_OBJ_STATE_PLUGGED) == 0 &&
	    !FUNC1(&mc_dev->dev))
		goto out;

	/*
	 * Traverse the match_id table of the given driver, trying to find
	 * a matching for the given device.
	 */
	for (id = mc_drv->match_id_table; id->vendor != 0x0; id++) {
		if (id->vendor == mc_dev->obj_desc.vendor &&
		    FUNC2(id->obj_type, mc_dev->obj_desc.type) == 0) {
			found = true;

			break;
		}
	}

out:
	FUNC0(dev, "%smatched\n", found ? "" : "not ");
	return found;
}