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
typedef  scalar_t__ git_submodule_recurse_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ GIT_SUBMODULE_RECURSE_YES ; 
 int /*<<< orphan*/  _sm_recurse_map ; 
 scalar_t__ FUNC1 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int FUNC2 (char*,char const*) ; 

int FUNC3(git_submodule_recurse_t *out, const char *value)
{
	int val;

	if (FUNC1(
			&val, _sm_recurse_map, FUNC0(_sm_recurse_map), value) < 0) {
		*out = GIT_SUBMODULE_RECURSE_YES;
		return FUNC2("recurse", value);
	}

	*out = (git_submodule_recurse_t)val;
	return 0;
}