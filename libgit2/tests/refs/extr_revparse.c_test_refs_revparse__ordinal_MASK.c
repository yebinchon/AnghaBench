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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 

void FUNC2(void)
{
	FUNC0("master@{-2}");
	
	/* TODO: make the test below actually fail
	 * cl_git_fail(git_revparse_single(&g_obj, g_repo, "master@{1a}"));
	 */

	FUNC1("nope@{0}", NULL);
	FUNC1("master@{31415}", NULL);
	FUNC1("@{1000}", NULL);
	FUNC1("@{2}", NULL);

	FUNC1("@{0}", "a65fedf39aefe402d3bb6e24df4d4f5fe4547750");
	FUNC1("@{1}", "be3563ae3f795b2b4353bcce3a527ad0a4f7f644");

	FUNC1("master@{0}", "a65fedf39aefe402d3bb6e24df4d4f5fe4547750");
	FUNC1("master@{1}", "be3563ae3f795b2b4353bcce3a527ad0a4f7f644");
	FUNC1("heads/master@{1}", "be3563ae3f795b2b4353bcce3a527ad0a4f7f644");
	FUNC1("refs/heads/master@{1}", "be3563ae3f795b2b4353bcce3a527ad0a4f7f644");
}