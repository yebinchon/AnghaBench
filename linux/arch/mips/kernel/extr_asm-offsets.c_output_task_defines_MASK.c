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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TASK_FLAGS ; 
 int /*<<< orphan*/  TASK_MM ; 
 int /*<<< orphan*/  TASK_PID ; 
 int /*<<< orphan*/  TASK_STACK_CANARY ; 
 int /*<<< orphan*/  TASK_STATE ; 
 int /*<<< orphan*/  TASK_STRUCT_SIZE ; 
 int /*<<< orphan*/  TASK_THREAD_INFO ; 
 int /*<<< orphan*/  flags ; 
 int /*<<< orphan*/  mm ; 
 int /*<<< orphan*/  pid ; 
 int /*<<< orphan*/  stack ; 
 int /*<<< orphan*/  stack_canary ; 
 int /*<<< orphan*/  state ; 
 int /*<<< orphan*/  task_struct ; 

void FUNC4(void)
{
	FUNC1("MIPS task_struct offsets.");
	FUNC3(TASK_STATE, task_struct, state);
	FUNC3(TASK_THREAD_INFO, task_struct, stack);
	FUNC3(TASK_FLAGS, task_struct, flags);
	FUNC3(TASK_MM, task_struct, mm);
	FUNC3(TASK_PID, task_struct, pid);
#if defined(CONFIG_STACKPROTECTOR)
	OFFSET(TASK_STACK_CANARY, task_struct, stack_canary);
#endif
	FUNC2(TASK_STRUCT_SIZE, sizeof(struct task_struct));
	FUNC0();
}