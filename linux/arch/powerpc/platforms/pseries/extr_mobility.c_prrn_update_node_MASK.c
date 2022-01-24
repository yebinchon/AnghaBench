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
struct TYPE_2__ {int /*<<< orphan*/  drc_index; } ;
struct pseries_hp_errorlog {TYPE_1__ _drc_u; int /*<<< orphan*/  id_type; int /*<<< orphan*/  action; int /*<<< orphan*/  resource; } ;
struct device_node {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  PSERIES_HP_ELOG_ACTION_READD ; 
 int /*<<< orphan*/  PSERIES_HP_ELOG_ID_DRC_INDEX ; 
 int /*<<< orphan*/  PSERIES_HP_ELOG_RESOURCE_MEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pseries_hp_errorlog*) ; 
 struct device_node* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*) ; 

__attribute__((used)) static void FUNC4(__be32 phandle)
{
	struct pseries_hp_errorlog hp_elog;
	struct device_node *dn;

	/*
	 * If a node is found from a the given phandle, the phandle does not
	 * represent the drc index of an LMB and we can ignore.
	 */
	dn = FUNC2(FUNC0(phandle));
	if (dn) {
		FUNC3(dn);
		return;
	}

	hp_elog.resource = PSERIES_HP_ELOG_RESOURCE_MEM;
	hp_elog.action = PSERIES_HP_ELOG_ACTION_READD;
	hp_elog.id_type = PSERIES_HP_ELOG_ID_DRC_INDEX;
	hp_elog._drc_u.drc_index = phandle;

	FUNC1(&hp_elog);
}