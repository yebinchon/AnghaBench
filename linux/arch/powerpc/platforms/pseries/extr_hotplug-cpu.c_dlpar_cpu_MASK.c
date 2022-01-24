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
struct TYPE_2__ {int /*<<< orphan*/  drc_index; int /*<<< orphan*/  drc_count; } ;
struct pseries_hp_errorlog {int action; int /*<<< orphan*/  id_type; TYPE_1__ _drc_u; } ;

/* Variables and functions */
 int EINVAL ; 
#define  PSERIES_HP_ELOG_ACTION_ADD 129 
#define  PSERIES_HP_ELOG_ACTION_REMOVE 128 
 int /*<<< orphan*/  PSERIES_HP_ELOG_ID_DRC_COUNT ; 
 int /*<<< orphan*/  PSERIES_HP_ELOG_ID_DRC_INDEX ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 

int FUNC7(struct pseries_hp_errorlog *hp_elog)
{
	u32 count, drc_index;
	int rc;

	count = hp_elog->_drc_u.drc_count;
	drc_index = hp_elog->_drc_u.drc_index;

	FUNC4();

	switch (hp_elog->action) {
	case PSERIES_HP_ELOG_ACTION_REMOVE:
		if (hp_elog->id_type == PSERIES_HP_ELOG_ID_DRC_COUNT)
			rc = FUNC2(count);
		else if (hp_elog->id_type == PSERIES_HP_ELOG_ID_DRC_INDEX)
			rc = FUNC3(drc_index);
		else
			rc = -EINVAL;
		break;
	case PSERIES_HP_ELOG_ACTION_ADD:
		if (hp_elog->id_type == PSERIES_HP_ELOG_ID_DRC_COUNT)
			rc = FUNC1(count);
		else if (hp_elog->id_type == PSERIES_HP_ELOG_ID_DRC_INDEX)
			rc = FUNC0(drc_index);
		else
			rc = -EINVAL;
		break;
	default:
		FUNC5("Invalid action (%d) specified\n", hp_elog->action);
		rc = -EINVAL;
		break;
	}

	FUNC6();
	return rc;
}