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
struct pseries_hp_errorlog {int /*<<< orphan*/  resource; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  PSERIES_HP_ELOG_RESOURCE_CPU ; 
 int /*<<< orphan*/  PSERIES_HP_ELOG_RESOURCE_MEM ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char**,char*) ; 
 scalar_t__ FUNC2 (char*,char*) ; 

__attribute__((used)) static int FUNC3(char **cmd, struct pseries_hp_errorlog *hp_elog)
{
	char *arg;

	arg = FUNC1(cmd, " ");
	if (!arg)
		return -EINVAL;

	if (FUNC2(arg, "memory")) {
		hp_elog->resource = PSERIES_HP_ELOG_RESOURCE_MEM;
	} else if (FUNC2(arg, "cpu")) {
		hp_elog->resource = PSERIES_HP_ELOG_RESOURCE_CPU;
	} else {
		FUNC0("Invalid resource specified.\n");
		return -EINVAL;
	}

	return 0;
}