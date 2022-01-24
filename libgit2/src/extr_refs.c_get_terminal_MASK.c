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
typedef  int /*<<< orphan*/  git_reference ;

/* Variables and functions */
 int GIT_ENOTFOUND ; 
 int /*<<< orphan*/  GIT_ERROR_REFERENCE ; 
 scalar_t__ GIT_REFERENCE_DIRECT ; 
 int MAX_NESTING_LEVEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(git_reference **out, git_repository *repo, const char *ref_name, int nesting)
{
	git_reference *ref;
	int error = 0;

	if (nesting > MAX_NESTING_LEVEL) {
		FUNC0(GIT_ERROR_REFERENCE, "reference chain too deep (%d)", nesting);
		return GIT_ENOTFOUND;
	}

	/* set to NULL to let the caller know that they're at the end of the chain */
	if ((error = FUNC2(&ref, repo, ref_name)) < 0) {
		*out = NULL;
		return error;
	}

	if (FUNC4(ref) == GIT_REFERENCE_DIRECT) {
		*out = ref;
		error = 0;
	} else {
		error = FUNC5(out, repo, FUNC3(ref), nesting + 1);
		if (error == GIT_ENOTFOUND && !*out)
			*out = ref;
		else
			FUNC1(ref);
	}

	return error;
}