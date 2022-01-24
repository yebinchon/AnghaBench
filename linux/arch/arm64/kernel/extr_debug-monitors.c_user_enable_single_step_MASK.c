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
struct thread_info {int dummy; } ;
struct task_struct {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TIF_SINGLESTEP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*) ; 
 struct thread_info* FUNC2 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct thread_info*,int /*<<< orphan*/ ) ; 

void FUNC4(struct task_struct *task)
{
	struct thread_info *ti = FUNC2(task);

	if (!FUNC3(ti, TIF_SINGLESTEP))
		FUNC0(FUNC1(task));
}