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
typedef  int /*<<< orphan*/  git_object ;
typedef  int /*<<< orphan*/  git_commit ;
typedef  int /*<<< orphan*/  git_annotated_commit ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_OBJECT_COMMIT ; 
 int FUNC0 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*) ; 

int FUNC5(
	git_annotated_commit **out,
	git_repository *repo,
	const char *revspec)
{
	git_object *obj, *commit;
	int error;

	FUNC1(out && repo && revspec);

	if ((error = FUNC4(&obj, repo, revspec)) < 0)
		return error;

	if ((error = FUNC3(&commit, obj, GIT_OBJECT_COMMIT))) {
		FUNC2(obj);
		return error;
	}

	error = FUNC0(out, (git_commit *)commit, revspec);

	FUNC2(obj);
	FUNC2(commit);

	return error;
}