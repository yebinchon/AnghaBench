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
typedef  int /*<<< orphan*/  git_object ;
typedef  int /*<<< orphan*/  git_commit ;

/* Variables and functions */
 int GIT_EAMBIGUOUS ; 
 int GIT_EINVALIDSPEC ; 
 int GIT_ENOTFOUND ; 
 int /*<<< orphan*/  GIT_OBJECT_COMMIT ; 
 int FUNC0 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(git_object **out, git_object *obj, int n)
{
	git_object *temp_commit = NULL;
	int error;

	if ((error = FUNC2(&temp_commit, obj, GIT_OBJECT_COMMIT)) < 0)
		return (error == GIT_EAMBIGUOUS || error == GIT_ENOTFOUND) ?
			GIT_EINVALIDSPEC : error;

	if (n == 0) {
		*out = temp_commit;
		return 0;
	}

	error = FUNC0((git_commit **)out, (git_commit*)temp_commit, n - 1);

	FUNC1(temp_commit);
	return error;
}