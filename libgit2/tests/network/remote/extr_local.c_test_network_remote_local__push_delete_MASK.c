#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char** member_0; int member_1; char** strings; } ;
typedef  TYPE_1__ git_strarray ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_remote ;
typedef  int /*<<< orphan*/  git_reference ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ **,char*,int) ; 

void FUNC12(void)
{
	git_repository *src_repo;
	git_repository *dst_repo;
	git_remote *remote;
	git_reference *ref;
	char *spec_push[] = { "refs/heads/master" };
	char *spec_delete[] = { ":refs/heads/master" };
	git_strarray specs = {
		spec_push,
		1,
	};

	src_repo = FUNC4("testrepo.git");
	FUNC2(FUNC11(&dst_repo, "target.git", 1));

	FUNC2(FUNC7(&remote, src_repo, "origin", "./target.git"));

	/* Push the master branch and verify it's there */
	FUNC2(FUNC9(remote, &specs, NULL));
	FUNC2(FUNC6(&ref, dst_repo, "refs/heads/master"));
	FUNC5(ref);

	specs.strings = spec_delete;
	FUNC2(FUNC9(remote, &specs, NULL));
	FUNC1(FUNC6(&ref, dst_repo, "refs/heads/master"));

	FUNC8(remote);
	FUNC10(dst_repo);
	FUNC0("target.git");
	FUNC3();
}