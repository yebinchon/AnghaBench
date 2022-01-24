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
 int /*<<< orphan*/ * g_actualobject ; 
 int /*<<< orphan*/ * g_expectedobject ; 
 int /*<<< orphan*/  g_head_commit ; 
 int /*<<< orphan*/ * g_repo ; 
 int /*<<< orphan*/  g_root_tree ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(void)
{
	FUNC1(g_actualobject);
	FUNC1(g_expectedobject);
	FUNC3(g_root_tree);
	FUNC0(g_head_commit);
	g_expectedobject = NULL;
	FUNC2(g_repo);
	g_repo = NULL;
}