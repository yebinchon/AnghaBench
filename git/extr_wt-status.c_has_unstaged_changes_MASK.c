#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int ignore_submodules; int override_submodule_config; int quick; } ;
struct TYPE_5__ {TYPE_1__ flags; } ;
struct rev_info {TYPE_2__ diffopt; } ;
struct repository {int dummy; } ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (struct repository*,struct rev_info*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct rev_info*,int /*<<< orphan*/ ) ; 

int FUNC4(struct repository *r, int ignore_submodules)
{
	struct rev_info rev_info;
	int result;

	FUNC2(r, &rev_info, NULL);
	if (ignore_submodules) {
		rev_info.diffopt.flags.ignore_submodules = 1;
		rev_info.diffopt.flags.override_submodule_config = 1;
	}
	rev_info.diffopt.flags.quick = 1;
	FUNC1(&rev_info.diffopt);
	result = FUNC3(&rev_info, 0);
	return FUNC0(&rev_info.diffopt, result);
}