#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ contents; int /*<<< orphan*/  length; } ;
typedef  TYPE_1__ git_vector ;
struct TYPE_8__ {char** strings; int /*<<< orphan*/  count; } ;
typedef  TYPE_2__ git_strarray ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_remote ;

/* Variables and functions */
 TYPE_1__ GIT_VECTOR_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/ *,char const*) ; 
 int FUNC7 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int FUNC8 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int FUNC9 (int /*<<< orphan*/ *,char const*,char const*) ; 

int FUNC10(git_strarray *out, git_repository *repo, const char *name, const char *new_name)
{
	int error;
	git_vector problem_refspecs = GIT_VECTOR_INIT;
	git_remote *remote = NULL;

	FUNC0(out && repo && name && new_name);

	if ((error = FUNC4(&remote, repo, name)) < 0)
		return error;

	if ((error = FUNC2(new_name)) < 0)
		goto cleanup;

	if ((error = FUNC1(repo, new_name)) < 0)
		goto cleanup;

	if ((error = FUNC7(repo, name, new_name)) < 0)
		goto cleanup;

	if ((error = FUNC9(repo, name, new_name)) < 0)
		goto cleanup;

	if ((error = FUNC8(repo, name, new_name)) < 0)
		goto cleanup;

	if ((error = FUNC6(&problem_refspecs, remote, new_name)) < 0)
		goto cleanup;

	out->count = problem_refspecs.length;
	out->strings = (char **) problem_refspecs.contents;

cleanup:
	if (error < 0)
		FUNC5(&problem_refspecs);

	FUNC3(remote);
	return error;
}