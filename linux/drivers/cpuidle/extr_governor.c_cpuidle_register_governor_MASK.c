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
struct cpuidle_governor {scalar_t__ rating; int /*<<< orphan*/  name; int /*<<< orphan*/  governor_list; int /*<<< orphan*/  select; } ;
struct TYPE_2__ {scalar_t__ rating; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPUIDLE_NAME_LEN ; 
 int EEXIST ; 
 int EINVAL ; 
 int ENODEV ; 
 TYPE_1__* cpuidle_curr_governor ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cpuidle_governors ; 
 int /*<<< orphan*/  cpuidle_lock ; 
 int /*<<< orphan*/  FUNC2 (struct cpuidle_governor*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  param_governor ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC7(struct cpuidle_governor *gov)
{
	int ret = -EEXIST;

	if (!gov || !gov->select)
		return -EINVAL;

	if (FUNC0())
		return -ENODEV;

	FUNC4(&cpuidle_lock);
	if (FUNC1(gov->name) == NULL) {
		ret = 0;
		FUNC3(&gov->governor_list, &cpuidle_governors);
		if (!cpuidle_curr_governor ||
		    !FUNC6(param_governor, gov->name, CPUIDLE_NAME_LEN) ||
		    (cpuidle_curr_governor->rating < gov->rating &&
		     FUNC6(param_governor, cpuidle_curr_governor->name,
				 CPUIDLE_NAME_LEN)))
			FUNC2(gov);
	}
	FUNC5(&cpuidle_lock);

	return ret;
}