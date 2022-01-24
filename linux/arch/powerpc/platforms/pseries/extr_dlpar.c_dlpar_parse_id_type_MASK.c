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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_3__ {void* index; void* count; } ;
struct TYPE_4__ {void* drc_count; void* drc_index; TYPE_1__ ic; } ;
struct pseries_hp_errorlog {TYPE_2__ _drc_u; int /*<<< orphan*/  id_type; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  PSERIES_HP_ELOG_ID_DRC_COUNT ; 
 int /*<<< orphan*/  PSERIES_HP_ELOG_ID_DRC_IC ; 
 int /*<<< orphan*/  PSERIES_HP_ELOG_ID_DRC_INDEX ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char**,char*) ; 
 scalar_t__ FUNC4 (char*,char*) ; 

__attribute__((used)) static int FUNC5(char **cmd, struct pseries_hp_errorlog *hp_elog)
{
	char *arg;
	u32 count, index;

	arg = FUNC3(cmd, " ");
	if (!arg)
		return -EINVAL;

	if (FUNC4(arg, "indexed-count")) {
		hp_elog->id_type = PSERIES_HP_ELOG_ID_DRC_IC;
		arg = FUNC3(cmd, " ");
		if (!arg) {
			FUNC2("No DRC count specified.\n");
			return -EINVAL;
		}

		if (FUNC1(arg, 0, &count)) {
			FUNC2("Invalid DRC count specified.\n");
			return -EINVAL;
		}

		arg = FUNC3(cmd, " ");
		if (!arg) {
			FUNC2("No DRC Index specified.\n");
			return -EINVAL;
		}

		if (FUNC1(arg, 0, &index)) {
			FUNC2("Invalid DRC Index specified.\n");
			return -EINVAL;
		}

		hp_elog->_drc_u.ic.count = FUNC0(count);
		hp_elog->_drc_u.ic.index = FUNC0(index);
	} else if (FUNC4(arg, "index")) {
		hp_elog->id_type = PSERIES_HP_ELOG_ID_DRC_INDEX;
		arg = FUNC3(cmd, " ");
		if (!arg) {
			FUNC2("No DRC Index specified.\n");
			return -EINVAL;
		}

		if (FUNC1(arg, 0, &index)) {
			FUNC2("Invalid DRC Index specified.\n");
			return -EINVAL;
		}

		hp_elog->_drc_u.drc_index = FUNC0(index);
	} else if (FUNC4(arg, "count")) {
		hp_elog->id_type = PSERIES_HP_ELOG_ID_DRC_COUNT;
		arg = FUNC3(cmd, " ");
		if (!arg) {
			FUNC2("No DRC count specified.\n");
			return -EINVAL;
		}

		if (FUNC1(arg, 0, &count)) {
			FUNC2("Invalid DRC count specified.\n");
			return -EINVAL;
		}

		hp_elog->_drc_u.drc_count = FUNC0(count);
	} else {
		FUNC2("Invalid id_type specified.\n");
		return -EINVAL;
	}

	return 0;
}