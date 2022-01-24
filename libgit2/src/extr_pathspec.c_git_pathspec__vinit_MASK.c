#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_vector ;
struct TYPE_9__ {size_t count; char** strings; } ;
typedef  TYPE_1__ git_strarray ;
typedef  int /*<<< orphan*/  git_pool ;
struct TYPE_10__ {int flags; } ;
typedef  TYPE_2__ git_attr_fnmatch ;

/* Variables and functions */
 int GIT_ATTR_FNMATCH_ALLOWNEG ; 
 int GIT_ATTR_FNMATCH_ALLOWSPACE ; 
 int GIT_ENOTFOUND ; 
 TYPE_2__* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int FUNC2 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const**) ; 
 scalar_t__ FUNC3 (TYPE_1__ const*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

int FUNC7(
	git_vector *vspec, const git_strarray *strspec, git_pool *strpool)
{
	size_t i;

	FUNC6(vspec, 0, sizeof(*vspec));

	if (FUNC3(strspec))
		return 0;

	if (FUNC4(vspec, strspec->count, NULL) < 0)
		return -1;

	for (i = 0; i < strspec->count; ++i) {
		int ret;
		const char *pattern = strspec->strings[i];
		git_attr_fnmatch *match = FUNC0(1, sizeof(git_attr_fnmatch));
		if (!match)
			return -1;

		match->flags = GIT_ATTR_FNMATCH_ALLOWSPACE | GIT_ATTR_FNMATCH_ALLOWNEG;

		ret = FUNC2(match, strpool, NULL, &pattern);
		if (ret == GIT_ENOTFOUND) {
			FUNC1(match);
			continue;
		} else if (ret < 0) {
			FUNC1(match);
			return ret;
		}

		if (FUNC5(vspec, match) < 0)
			return -1;
	}

	return 0;
}