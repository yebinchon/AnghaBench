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
struct stat {int /*<<< orphan*/  st_mode; } ;
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,struct stat*) ; 

void FUNC10(void)
{
#ifdef GIT_WIN32
	git_buf target_path = GIT_BUF_INIT;
	struct stat st;

	git_buf_join(&target_path, '/', clar_sandbox_path(), "stat_junctarget");

	p_mkdir("stat_junctarget", 0777);
	do_junction(git_buf_cstr(&target_path), "stat_junction");

	cl_must_pass(p_stat("stat_junctarget", &st));
	cl_assert(S_ISDIR(st.st_mode));

	cl_must_pass(p_stat("stat_junction", &st));
	cl_assert(S_ISDIR(st.st_mode));

	git_buf_dispose(&target_path);
#endif
}