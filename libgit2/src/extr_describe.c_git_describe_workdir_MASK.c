#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_status_options ;
typedef  int /*<<< orphan*/  git_status_list ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_object ;
struct TYPE_5__ {int dirty; } ;
typedef  TYPE_1__ git_describe_result ;
typedef  int /*<<< orphan*/  git_describe_options ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_HEAD_FILE ; 
 int /*<<< orphan*/  GIT_OBJECT_COMMIT ; 
 int /*<<< orphan*/  GIT_STATUS_OPTIONS_INIT ; 
 int FUNC0 (TYPE_1__**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC8(
	git_describe_result **out,
	git_repository *repo,
	git_describe_options *opts)
{
	int error;
	git_oid current_id;
	git_status_list *status = NULL;
	git_status_options status_opts = GIT_STATUS_OPTIONS_INIT;
	git_describe_result *result = NULL;
	git_object *commit;

	if ((error = FUNC4(&current_id, repo, GIT_HEAD_FILE)) < 0)
		return error;

	if ((error = FUNC3(&commit, repo, &current_id, GIT_OBJECT_COMMIT)) < 0)
		return error;

	/* The first step is to perform a describe of HEAD, so we can leverage this */
	if ((error = FUNC0(&result, commit, opts)) < 0)
		goto out;

	if ((error = FUNC7(&status, repo, &status_opts)) < 0)
		goto out;


	if (FUNC5(status) > 0)
		result->dirty = 1;

out:
	FUNC2(commit);
	FUNC6(status);

	if (error < 0)
		FUNC1(result);
	else
		*out = result;

	return error;
}