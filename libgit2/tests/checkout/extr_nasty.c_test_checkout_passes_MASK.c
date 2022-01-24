#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_object ;
typedef  int /*<<< orphan*/  git_commit ;
struct TYPE_8__ {int checkout_strategy; } ;
typedef  TYPE_1__ git_checkout_options ;
struct TYPE_9__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_2__ git_buf ;

/* Variables and functions */
 TYPE_2__ GIT_BUF_INIT ; 
 int GIT_CHECKOUT_DONT_UPDATE_INDEX ; 
 int GIT_CHECKOUT_FORCE ; 
 TYPE_1__ GIT_CHECKOUT_OPTIONS_INIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  repo ; 
 int /*<<< orphan*/  repo_name ; 

__attribute__((used)) static void FUNC9(const char *refname, const char *filename)
{
	git_oid commit_id;
	git_commit *commit;
	git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;
	git_buf path = GIT_BUF_INIT;

	FUNC1(FUNC3(&path, repo_name, filename));

	FUNC1(FUNC8(&commit_id, repo, refname));
	FUNC1(FUNC6(&commit, repo, &commit_id));

	opts.checkout_strategy = GIT_CHECKOUT_FORCE |
		GIT_CHECKOUT_DONT_UPDATE_INDEX;

	FUNC1(FUNC4(repo, (const git_object *)commit, &opts));
	FUNC0(!FUNC7(path.ptr));

	FUNC5(commit);
	FUNC2(&path);
}