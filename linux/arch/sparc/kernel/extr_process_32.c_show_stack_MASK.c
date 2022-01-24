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
struct reg_window32 {unsigned long* ins; } ;

/* Variables and functions */
 int PAGE_SIZE ; 
 struct task_struct* current ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ FUNC1 (struct task_struct*) ; 

void FUNC2(struct task_struct *tsk, unsigned long *_ksp)
{
	unsigned long pc, fp;
	unsigned long task_base;
	struct reg_window32 *rw;
	int count = 0;

	if (!tsk)
		tsk = current;

	if (tsk == current && !_ksp)
		__asm__ __volatile__("mov	%%fp, %0" : "=r" (_ksp));

	task_base = (unsigned long) FUNC1(tsk);
	fp = (unsigned long) _ksp;
	do {
		/* Bogus frame pointer? */
		if (fp < (task_base + sizeof(struct thread_info)) ||
		    fp >= (task_base + (PAGE_SIZE << 1)))
			break;
		rw = (struct reg_window32 *) fp;
		pc = rw->ins[7];
		FUNC0("[%08lx : ", pc);
		FUNC0("%pS ] ", (void *) pc);
		fp = rw->ins[6];
	} while (++count < 16);
	FUNC0("\n");
}