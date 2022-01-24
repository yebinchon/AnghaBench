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
struct user_regset {int dummy; } ;
struct task_struct {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TIF_RESTORE_RSE ; 
 int /*<<< orphan*/  do_gpregs_writeback ; 
 int FUNC0 (int /*<<< orphan*/ ,struct task_struct*,struct user_regset const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*) ; 
 scalar_t__ FUNC2 (struct task_struct*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct task_struct *target,
		 const struct user_regset *regset,
		 int now)
{
	if (FUNC2(target, TIF_RESTORE_RSE))
		return 0;
	FUNC1(target);
	return FUNC0(do_gpregs_writeback, target, regset, 0, 0,
		NULL, NULL);
}