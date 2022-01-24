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
 int /*<<< orphan*/  TIF_SYSCALL_TRACE ; 
 int /*<<< orphan*/  FUNC0 (struct task_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*) ; 

void FUNC3(struct task_struct *child)
{
	FUNC1("ptrace_disable(): TODO\n");

	FUNC2(child);
	FUNC0(child, TIF_SYSCALL_TRACE);
}