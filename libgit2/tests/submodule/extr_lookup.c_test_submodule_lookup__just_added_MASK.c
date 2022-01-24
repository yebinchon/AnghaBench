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
typedef  int /*<<< orphan*/  git_submodule ;
typedef  int /*<<< orphan*/  git_reference ;
typedef  int /*<<< orphan*/  git_index ;
struct TYPE_5__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_EEXISTS ; 
 int /*<<< orphan*/  GIT_ENOTFOUND ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

void FUNC22(void)
{
	git_submodule *sm;
	git_buf snap1 = GIT_BUF_INIT, snap2 = GIT_BUF_INIT;
	git_reference *original_head = NULL;

	FUNC21(g_repo, "sm_just_added", GIT_ENOTFOUND);
	FUNC21(g_repo, "sm_just_added_2", GIT_ENOTFOUND);
	FUNC21(g_repo, "sm_just_added_idx", GIT_ENOTFOUND);
	FUNC21(g_repo, "sm_just_added_head", GIT_ENOTFOUND);
	FUNC21(g_repo, "mismatch_name", GIT_ENOTFOUND);
	FUNC21(g_repo, "mismatch_path", GIT_ENOTFOUND);
	FUNC2();

	FUNC5(FUNC9(&snap1, "submod2/.gitmodules"));
	FUNC5(FUNC16(&original_head, g_repo));

	FUNC5(FUNC19(&sm, g_repo,
		"https://github.com/libgit2/libgit2.git", "sm_just_added", 1));
	FUNC20(sm);
	FUNC1(g_repo, "sm_just_added");

	FUNC5(FUNC19(&sm, g_repo,
		"https://github.com/libgit2/libgit2.git", "sm_just_added_2", 1));
	FUNC1(g_repo, "sm_just_added_2");
	FUNC4(FUNC18(sm)); /* fails if no HEAD */
	FUNC20(sm);

	FUNC0("sm_just_added_head");
	FUNC7(NULL, g_repo, NULL, 0, "commit new sm to head");
	FUNC1(g_repo, "sm_just_added_head");

	FUNC0("sm_just_added_idx");
	FUNC1(g_repo, "sm_just_added_idx");

	FUNC5(FUNC9(&snap2, "submod2/.gitmodules"));

	FUNC3(
		"submod2/.gitmodules",
		"\n[submodule \"mismatch_name\"]\n"
		"\tpath = mismatch_path\n"
		"\turl = https://example.com/example.git\n\n");

	FUNC1(g_repo, "mismatch_name");
	FUNC1(g_repo, "mismatch_path");
	FUNC1(g_repo, "sm_just_added");
	FUNC1(g_repo, "sm_just_added_2");
	FUNC1(g_repo, "sm_just_added_idx");
	FUNC1(g_repo, "sm_just_added_head");
	FUNC2();

	FUNC6("submod2/.gitmodules", snap2.ptr);
	FUNC8(&snap2);

	FUNC21(g_repo, "mismatch_name", GIT_ENOTFOUND);
	FUNC21(g_repo, "mismatch_path", GIT_ENOTFOUND);
	FUNC1(g_repo, "sm_just_added");
	FUNC1(g_repo, "sm_just_added_2");
	FUNC1(g_repo, "sm_just_added_idx");
	FUNC1(g_repo, "sm_just_added_head");
	FUNC2();

	FUNC6("submod2/.gitmodules", snap1.ptr);
	FUNC8(&snap1);

	FUNC21(g_repo, "mismatch_name", GIT_ENOTFOUND);
	FUNC21(g_repo, "mismatch_path", GIT_ENOTFOUND);
	/* note error code change, because add_setup made a repo in the workdir */
	FUNC21(g_repo, "sm_just_added", GIT_EEXISTS);
	FUNC21(g_repo, "sm_just_added_2", GIT_EEXISTS);
	/* these still exist in index and head respectively */
	FUNC1(g_repo, "sm_just_added_idx");
	FUNC1(g_repo, "sm_just_added_head");
	FUNC2();

	{
		git_index *idx;
		FUNC5(FUNC17(&idx, g_repo));
		FUNC5(FUNC11(idx, "sm_just_added_idx"));
		FUNC5(FUNC11(idx, "sm_just_added_head"));
		FUNC5(FUNC12(idx));
		FUNC10(idx);
	}

	FUNC21(g_repo, "sm_just_added_idx", GIT_EEXISTS);
	FUNC1(g_repo, "sm_just_added_head");

	{
		FUNC5(FUNC13(NULL, g_repo, "refs/heads/master", FUNC15(original_head), 1, "move head back"));
		FUNC14(original_head);
	}

	FUNC21(g_repo, "sm_just_added_head", GIT_EEXISTS);
}