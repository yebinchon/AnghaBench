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
typedef  int /*<<< orphan*/  git_submodule ;
typedef  int /*<<< orphan*/  git_repository ;
struct TYPE_3__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__**,size_t*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 () ; 

void FUNC13(void)
{
#ifdef GIT_WIN32
	git_repository *super_repo, *sub_repo;
	git_submodule *sub;
	git_buf *sub_reserved;
	size_t sub_reserved_len;

	if (!cl_sandbox_supports_8dot3())
		clar__skip();

	super_repo = setup_fixture_submod2();

	assert_submodule_exists(super_repo, "sm_unchanged");

	cl_git_pass(git_submodule_lookup(&sub, super_repo, "sm_unchanged"));
	cl_git_pass(git_submodule_open(&sub_repo, sub));

	cl_assert(git_repository__reserved_names(&sub_reserved, &sub_reserved_len, sub_repo, true));

	cl_assert_equal_i(2, sub_reserved_len);
	cl_assert_equal_s(".git", sub_reserved[0].ptr);
	cl_assert_equal_s("GIT~1", sub_reserved[1].ptr);

	git_submodule_free(sub);
	git_repository_free(sub_repo);
#endif
}