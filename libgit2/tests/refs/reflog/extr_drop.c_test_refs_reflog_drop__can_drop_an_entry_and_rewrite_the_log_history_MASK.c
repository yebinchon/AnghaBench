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
struct TYPE_3__ {int /*<<< orphan*/  oid_cur; int /*<<< orphan*/  oid_old; } ;
typedef  TYPE_1__ git_reflog_entry ;
typedef  int /*<<< orphan*/  git_oid ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int entrycount ; 
 int /*<<< orphan*/  g_reflog ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

void FUNC9(void)
{
	const git_reflog_entry *before_current;
	const git_reflog_entry *after_current;
	git_oid before_current_old_oid, before_current_cur_oid;

	FUNC0(entrycount > 4);

	before_current = FUNC7(g_reflog, 1);

	FUNC5(&before_current_old_oid, &before_current->oid_old);
	FUNC5(&before_current_cur_oid, &before_current->oid_cur);

	FUNC3(FUNC6(g_reflog, 1, 1));

	FUNC2(entrycount - 1, FUNC8(g_reflog));

	after_current = FUNC7(g_reflog, 0);

	FUNC1(0, FUNC4(&before_current_old_oid, &after_current->oid_old));
	FUNC0(0 != FUNC4(&before_current_cur_oid, &after_current->oid_cur));
}