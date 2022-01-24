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
typedef  int /*<<< orphan*/  git_oid ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ERROR_INVALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 

int FUNC3(git_oid *out, git_repository *repo, size_t length, const git_oid input_array[])
{
	git_oid result;
	unsigned int i;
	int error = -1;

	FUNC0(out && repo && input_array);

	if (length < 2) {
		FUNC1(GIT_ERROR_INVALID, "at least two commits are required to find an ancestor");
		return -1;
	}

	result = input_array[0];
	for (i = 1; i < length; i++) {
		error = FUNC2(&result, repo, &result, &input_array[i]);
		if (error < 0)
			return error;
	}

	*out = result;

	return 0;
}