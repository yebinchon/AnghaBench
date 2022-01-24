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
struct TYPE_7__ {char** member_0; int member_1; } ;
typedef  TYPE_1__ git_strarray ;
typedef  int /*<<< orphan*/  git_remote ;
struct TYPE_8__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_2__ git_buf ;

/* Variables and functions */
 TYPE_2__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  cleanup_repository ; 
 int /*<<< orphan*/  find_master_haacked ; 
 int find_master_haacked_called ; 
 int found_haacked ; 
 int found_master ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

void FUNC13(void)
{
	git_remote *remote;
	git_buf path = GIT_BUF_INIT;
	char *refspec1 = "refs/heads/master";
	char *refspec2 = "refs/heads/haacked";
	char *refspecs[] = { refspec1, refspec2 };
	git_strarray specs = {
		refspecs,
		2,
	};

	FUNC3(&cleanup_repository, "./test1");
	FUNC2(FUNC11(&g_repo, "./test1", 0));

	FUNC2(FUNC5(&path, FUNC12(g_repo), "FETCH_HEAD"));
	FUNC2(FUNC7(&remote, g_repo, "origin", FUNC1("testrepo.git")));

	FUNC0(!FUNC6(path.ptr));
	FUNC2(FUNC8(remote, &specs, NULL, NULL));
	FUNC0(FUNC6(path.ptr));

	FUNC2(FUNC10(g_repo, find_master_haacked, NULL));
	FUNC0(find_master_haacked_called);
	FUNC0(found_master);
	FUNC0(found_haacked);

	FUNC9(remote);
	FUNC4(&path);
}