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
struct TYPE_3__ {void* index; void* count; } ;
struct TYPE_4__ {TYPE_1__ ic; void* drc_index; void* drc_count; } ;
struct pseries_hp_errorlog {int id_type; int resource; TYPE_2__ _drc_u; } ;

/* Variables and functions */
 int EINVAL ; 
#define  PSERIES_HP_ELOG_ID_DRC_COUNT 133 
#define  PSERIES_HP_ELOG_ID_DRC_IC 132 
#define  PSERIES_HP_ELOG_ID_DRC_INDEX 131 
#define  PSERIES_HP_ELOG_RESOURCE_CPU 130 
#define  PSERIES_HP_ELOG_RESOURCE_MEM 129 
#define  PSERIES_HP_ELOG_RESOURCE_PMEM 128 
 void* FUNC0 (void*) ; 
 int FUNC1 (struct pseries_hp_errorlog*) ; 
 int FUNC2 (struct pseries_hp_errorlog*) ; 
 int FUNC3 (struct pseries_hp_errorlog*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

int FUNC5(struct pseries_hp_errorlog *hp_elog)
{
	int rc;

	/* pseries error logs are in BE format, convert to cpu type */
	switch (hp_elog->id_type) {
	case PSERIES_HP_ELOG_ID_DRC_COUNT:
		hp_elog->_drc_u.drc_count =
				FUNC0(hp_elog->_drc_u.drc_count);
		break;
	case PSERIES_HP_ELOG_ID_DRC_INDEX:
		hp_elog->_drc_u.drc_index =
				FUNC0(hp_elog->_drc_u.drc_index);
		break;
	case PSERIES_HP_ELOG_ID_DRC_IC:
		hp_elog->_drc_u.ic.count =
				FUNC0(hp_elog->_drc_u.ic.count);
		hp_elog->_drc_u.ic.index =
				FUNC0(hp_elog->_drc_u.ic.index);
	}

	switch (hp_elog->resource) {
	case PSERIES_HP_ELOG_RESOURCE_MEM:
		rc = FUNC3(hp_elog);
		break;
	case PSERIES_HP_ELOG_RESOURCE_CPU:
		rc = FUNC1(hp_elog);
		break;
	case PSERIES_HP_ELOG_RESOURCE_PMEM:
		rc = FUNC2(hp_elog);
		break;

	default:
		FUNC4("Invalid resource (%d) specified\n",
				    hp_elog->resource);
		rc = -EINVAL;
	}

	return rc;
}