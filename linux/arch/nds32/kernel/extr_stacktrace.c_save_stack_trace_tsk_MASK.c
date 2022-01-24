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
struct stack_trace {int skip; unsigned long* entries; scalar_t__ nr_entries; scalar_t__ max_entries; } ;

/* Variables and functions */
 size_t FP_OFFSET ; 
 size_t LP_OFFSET ; 
 scalar_t__ TASK_SIZE ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 struct task_struct* current ; 
 unsigned long FUNC1 (struct task_struct*,int*,unsigned long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long*) ; 
 scalar_t__ FUNC4 (struct task_struct*) ; 

void FUNC5(struct task_struct *tsk, struct stack_trace *trace)
{
	unsigned long *fpn;
	int skip = trace->skip;
	int savesched;
	int graph_idx = 0;

	if (tsk == current) {
		__asm__ __volatile__("\tori\t%0, $fp, #0\n":"=r"(fpn));
		savesched = 1;
	} else {
		fpn = (unsigned long *)FUNC4(tsk);
		savesched = 0;
	}

	while (!FUNC3(fpn) && !((unsigned long)fpn & 0x3)
	       && (fpn >= (unsigned long *)TASK_SIZE)) {
		unsigned long lpp, fpp;

		lpp = fpn[LP_OFFSET];
		fpp = fpn[FP_OFFSET];
		if (!FUNC0(lpp))
			break;
		else
			lpp = FUNC1(tsk, &graph_idx, lpp, NULL);

		if (savesched || !FUNC2(lpp)) {
			if (skip) {
				skip--;
			} else {
				trace->entries[trace->nr_entries++] = lpp;
				if (trace->nr_entries >= trace->max_entries)
					break;
			}
		}
		fpn = (unsigned long *)fpp;
	}
}