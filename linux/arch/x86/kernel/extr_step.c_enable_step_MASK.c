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
struct task_struct {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TIF_BLOCKSTEP ; 
 scalar_t__ FUNC0 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*,int) ; 
 scalar_t__ FUNC2 (struct task_struct*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct task_struct *child, bool block)
{
	/*
	 * Make sure block stepping (BTF) is not enabled unless it should be.
	 * Note that we don't try to worry about any is_setting_trap_flag()
	 * instructions after the first when using block stepping.
	 * So no one should try to use debugger block stepping in a program
	 * that uses user-mode single stepping itself.
	 */
	if (FUNC0(child) && block)
		FUNC1(child, true);
	else if (FUNC2(child, TIF_BLOCKSTEP))
		FUNC1(child, false);
}