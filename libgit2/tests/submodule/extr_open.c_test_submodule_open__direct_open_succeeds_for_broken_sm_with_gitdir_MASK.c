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
struct TYPE_5__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_child ; 
 int /*<<< orphan*/  g_parent ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void FUNC7(void)
{
	git_buf path = GIT_BUF_INIT;

	/*
	 * This is actually not a valid submodule, but we
	 * encountered at least one occasion where the gitdir
	 * file existed inside of a submodule's gitdir. As we are
	 * now able to open these submodules correctly, we still
	 * add a test for this.
	 */
	FUNC1("submod2/.git/modules/sm_unchanged/gitdir", ".git");
	FUNC2(FUNC4(&path, FUNC6(g_parent), "sm_unchanged"));
	FUNC2(FUNC5(&g_child, path.ptr));
	FUNC0(g_parent, g_child, "sm_unchanged");

	FUNC3(&path);
}