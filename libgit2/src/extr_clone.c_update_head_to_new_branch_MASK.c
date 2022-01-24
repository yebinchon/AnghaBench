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
typedef  int /*<<< orphan*/  git_oid ;

/* Variables and functions */
 int GIT_EEXISTS ; 
 int /*<<< orphan*/  GIT_REFS_HEADS_DIR ; 
 int FUNC0 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(
	git_repository *repo,
	const git_oid *target,
	const char *name,
	const char *reflog_message)
{
	git_reference *tracking_branch = NULL;
	int error;

	if (!FUNC1(name, GIT_REFS_HEADS_DIR))
		name += FUNC5(GIT_REFS_HEADS_DIR);

	error = FUNC0(&tracking_branch, repo, target, name,
			reflog_message);

	if (!error)
		error = FUNC4(
			repo, FUNC3(tracking_branch));

	FUNC2(tracking_branch);

	/* if it already existed, then the user's refspec created it for us, ignore it' */
	if (error == GIT_EEXISTS)
		error = 0;

	return error;
}