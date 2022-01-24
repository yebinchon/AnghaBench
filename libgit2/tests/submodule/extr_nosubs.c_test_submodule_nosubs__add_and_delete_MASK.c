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
typedef  int /*<<< orphan*/  git_repository ;
struct TYPE_5__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/ * FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ ,char*) ; 

void FUNC16(void)
{
	git_repository *repo = FUNC5("status");
	git_submodule *sm;
	git_buf buf = GIT_BUF_INIT;

	FUNC2(FUNC11(NULL, repo, "libgit2"));
	FUNC2(FUNC11(NULL, repo, "submodules/libgit2"));

	/* create */

	FUNC3(FUNC9(
		&sm, repo, "https://github.com/libgit2/libgit2.git", "submodules/libgit2", 1));
	FUNC1("submodules/libgit2", FUNC12(sm));
	FUNC1("submodules/libgit2", FUNC13(sm));
	FUNC10(sm);

	FUNC3(FUNC8(&buf, "status/.gitmodules"));
	FUNC0(FUNC15(buf.ptr, "[submodule \"submodules/libgit2\"]") != NULL);
	FUNC0(FUNC15(buf.ptr, "path = submodules/libgit2") != NULL);
	FUNC7(&buf);

	/* lookup */

	FUNC2(FUNC11(&sm, repo, "libgit2"));
	FUNC3(FUNC11(&sm, repo, "submodules/libgit2"));
	FUNC1("submodules/libgit2", FUNC12(sm));
	FUNC1("submodules/libgit2", FUNC13(sm));
	FUNC10(sm);

	/* update name */

	FUNC4(
		"status/.gitmodules",
		"[submodule \"libgit2\"]\n"
		"  path = submodules/libgit2\n"
		"  url = https://github.com/libgit2/libgit2.git\n");

	FUNC3(FUNC11(&sm, repo, "libgit2"));
	FUNC1("libgit2", FUNC12(sm));
	FUNC1("submodules/libgit2", FUNC13(sm));
	FUNC10(sm);
	FUNC3(FUNC11(&sm, repo, "submodules/libgit2"));
	FUNC10(sm);

	/* revert name update */

	FUNC4(
		"status/.gitmodules",
		"[submodule \"submodules/libgit2\"]\n"
		"  path = submodules/libgit2\n"
		"  url = https://github.com/libgit2/libgit2.git\n");

	FUNC2(FUNC11(&sm, repo, "libgit2"));
	FUNC3(FUNC11(&sm, repo, "submodules/libgit2"));
	FUNC10(sm);

	/* remove completely */

	FUNC6(FUNC14("status/.gitmodules"));
	FUNC2(FUNC11(&sm, repo, "libgit2"));
	FUNC2(FUNC11(&sm, repo, "submodules/libgit2"));
}