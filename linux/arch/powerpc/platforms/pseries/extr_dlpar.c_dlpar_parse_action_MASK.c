#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct pseries_hp_errorlog {int /*<<< orphan*/  action; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  PSERIES_HP_ELOG_ACTION_ADD ; 
 int /*<<< orphan*/  PSERIES_HP_ELOG_ACTION_REMOVE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char**,char*) ; 
 scalar_t__ FUNC2 (char*,char*) ; 

__attribute__((used)) static int FUNC3(char **cmd, struct pseries_hp_errorlog *hp_elog)
{
	char *arg;

	arg = FUNC1(cmd, " ");
	if (!arg)
		return -EINVAL;

	if (FUNC2(arg, "add")) {
		hp_elog->action = PSERIES_HP_ELOG_ACTION_ADD;
	} else if (FUNC2(arg, "remove")) {
		hp_elog->action = PSERIES_HP_ELOG_ACTION_REMOVE;
	} else {
		FUNC0("Invalid action specified.\n");
		return -EINVAL;
	}

	return 0;
}