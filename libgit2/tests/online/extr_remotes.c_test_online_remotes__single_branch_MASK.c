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
struct TYPE_8__ {size_t count; int /*<<< orphan*/ * strings; } ;
typedef  TYPE_1__ git_strarray ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_remote ;
struct TYPE_9__ {char* checkout_branch; int /*<<< orphan*/  remote_cb; } ;
typedef  TYPE_2__ git_clone_options ;

/* Variables and functions */
 TYPE_2__ GIT_CLONE_OPTIONS_INIT ; 
 int /*<<< orphan*/  REFSPEC ; 
 int /*<<< orphan*/  URL ; 
 int /*<<< orphan*/  FUNC0 (int,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  remote_single_branch ; 

void FUNC11(void)
{
	git_clone_options opts = GIT_CLONE_OPTIONS_INIT;
	git_repository *repo;
	git_remote *remote;
	git_strarray refs;
	size_t i, count = 0;

	opts.remote_cb = remote_single_branch;
	opts.checkout_branch = "first-merge";

	FUNC2(FUNC4(&repo, URL, "./single-branch", &opts));
	FUNC2(FUNC5(&refs, repo));

	for (i = 0; i < refs.count; i++) {
		if (!FUNC3(refs.strings[i], "refs/heads/"))
			count++;
	}
	FUNC0(1, count);

	FUNC10(&refs);

	FUNC2(FUNC8(&remote, repo, "origin"));
	FUNC2(FUNC7(&refs, remote));

	FUNC0(1, refs.count);
	FUNC1(REFSPEC, refs.strings[0]);

	FUNC10(&refs);
	FUNC6(remote);
	FUNC9(repo);
}