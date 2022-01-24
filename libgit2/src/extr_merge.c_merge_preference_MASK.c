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
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_merge_preference_t ;
typedef  int /*<<< orphan*/  git_config ;

/* Variables and functions */
 int GIT_ENOTFOUND ; 
 int /*<<< orphan*/  GIT_MERGE_PREFERENCE_FASTFORWARD_ONLY ; 
 int /*<<< orphan*/  GIT_MERGE_PREFERENCE_NONE ; 
 int /*<<< orphan*/  GIT_MERGE_PREFERENCE_NO_FASTFORWARD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (char const**,int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC2 (int*,char const*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (char const*,char*) ; 

__attribute__((used)) static int FUNC6(git_merge_preference_t *out, git_repository *repo)
{
	git_config *config;
	const char *value;
	int bool_value, error = 0;

	*out = GIT_MERGE_PREFERENCE_NONE;

	if ((error = FUNC4(&config, repo)) < 0)
		goto done;

	if ((error = FUNC1(&value, config, "merge.ff")) < 0) {
		if (error == GIT_ENOTFOUND) {
			FUNC3();
			error = 0;
		}

		goto done;
	}

	if (FUNC2(&bool_value, value) == 0) {
		if (!bool_value)
			*out |= GIT_MERGE_PREFERENCE_NO_FASTFORWARD;
	} else {
		if (FUNC5(value, "only") == 0)
			*out |= GIT_MERGE_PREFERENCE_FASTFORWARD_ONLY;
	}

done:
	FUNC0(config);
	return error;
}