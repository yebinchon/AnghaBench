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
struct prefix_count {char* member_0; int member_2; int /*<<< orphan*/  count; int /*<<< orphan*/  expected; scalar_t__ prefix; int /*<<< orphan*/  member_1; } ;
typedef  int /*<<< orphan*/  git_remote ;
struct TYPE_5__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  cleanup_repository ; 
 int /*<<< orphan*/  count_refs ; 
 int count_refs_called ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct prefix_count**) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 

void FUNC16(void)
{
	git_remote *remote;
	git_buf path = GIT_BUF_INIT;

	FUNC4(&cleanup_repository, "./test1");
	FUNC3(FUNC14(&g_repo, "./test1", 0));

	FUNC3(FUNC9(&remote, g_repo, "origin", FUNC2("testrepo.git")));
	FUNC11(remote);
	FUNC3(FUNC8(g_repo, "origin", "+refs/notes/*:refs/origin/notes/*"));
	/* Pick up the new refspec */
	FUNC3(FUNC12(&remote, g_repo, "origin"));

	FUNC3(FUNC6(&path, FUNC15(g_repo), "FETCH_HEAD"));
	FUNC0(!FUNC7(path.ptr));
	FUNC3(FUNC10(remote, NULL, NULL, NULL));
	FUNC0(FUNC7(path.ptr));

	{
		int i;
		struct prefix_count prefix_counts[] = {
			{"refs/notes/", 0, 1},
			{"refs/heads/", 0, 12},
			{"refs/tags/", 0, 7},
			{NULL, 0, 0},
		};

		FUNC3(FUNC13(g_repo, count_refs, &prefix_counts));
		FUNC0(count_refs_called);
		for (i = 0; prefix_counts[i].prefix; i++)
			FUNC1(prefix_counts[i].expected, prefix_counts[i].count);
	}

	FUNC11(remote);
	FUNC5(&path);
}