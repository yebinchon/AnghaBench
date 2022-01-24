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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/  drc_index; } ;
struct pseries_hp_errorlog {scalar_t__ id_type; scalar_t__ action; TYPE_1__ _drc_u; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 scalar_t__ PSERIES_HP_ELOG_ACTION_ADD ; 
 scalar_t__ PSERIES_HP_ELOG_ACTION_REMOVE ; 
 scalar_t__ PSERIES_HP_ELOG_ID_DRC_INDEX ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ pmem_node ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 () ; 

int FUNC6(struct pseries_hp_errorlog *hp_elog)
{
	u32 drc_index;
	int rc;

	/* slim chance, but we might get a hotplug event while booting */
	if (!pmem_node)
		pmem_node = FUNC1(NULL, "ibm,persistent-memory");
	if (!pmem_node) {
		FUNC4("Hotplug event for a pmem device, but none exists\n");
		return -ENODEV;
	}

	if (hp_elog->id_type != PSERIES_HP_ELOG_ID_DRC_INDEX) {
		FUNC4("Unsupported hotplug event type %d\n",
				hp_elog->id_type);
		return -EINVAL;
	}

	drc_index = hp_elog->_drc_u.drc_index;

	FUNC0();

	if (hp_elog->action == PSERIES_HP_ELOG_ACTION_ADD) {
		rc = FUNC2(drc_index);
	} else if (hp_elog->action == PSERIES_HP_ELOG_ACTION_REMOVE) {
		rc = FUNC3(drc_index);
	} else {
		FUNC4("Unsupported hotplug action (%d)\n", hp_elog->action);
		rc = -EINVAL;
	}

	FUNC5();
	return rc;
}