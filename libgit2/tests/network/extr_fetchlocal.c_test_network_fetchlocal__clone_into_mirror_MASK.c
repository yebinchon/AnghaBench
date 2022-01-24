#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_reference ;
struct TYPE_4__ {int bare; int /*<<< orphan*/  remote_cb; } ;
typedef  TYPE_1__ git_clone_options ;

/* Variables and functions */
 TYPE_1__ GIT_CLONE_OPTIONS_INIT ; 
 int /*<<< orphan*/  GIT_REFERENCE_SYMBOLIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  remote_mirror_cb ; 

void FUNC11(void)
{
	git_clone_options opts = GIT_CLONE_OPTIONS_INIT;
	git_repository *repo;
	git_reference *ref;

	opts.bare = true;
	opts.remote_cb = remote_mirror_cb;
	FUNC4(FUNC5(&repo, FUNC3("testrepo.git"), "./foo.git", &opts));

	FUNC4(FUNC7(&ref, repo, "HEAD"));
	FUNC0(GIT_REFERENCE_SYMBOLIC, FUNC9(ref));
	FUNC1("refs/heads/master", FUNC8(ref));

	FUNC6(ref);
	FUNC4(FUNC7(&ref, repo, "refs/remotes/test/master"));

	FUNC6(ref);
	FUNC10(repo);
	FUNC2("./foo.git");
}