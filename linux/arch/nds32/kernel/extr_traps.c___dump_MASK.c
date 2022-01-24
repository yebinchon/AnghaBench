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
 int /*<<< orphan*/  CONFIG_FRAME_POINTER ; 
 size_t FP_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int LOOP_TIMES ; 
 size_t LP_OFFSET ; 
 unsigned long TASK_SIZE ; 
 scalar_t__ FUNC1 (unsigned long) ; 
 unsigned long FUNC2 (struct task_struct*,int*,unsigned long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 

__attribute__((used)) static void FUNC6(struct task_struct *tsk, unsigned long *base_reg)
{
	unsigned long ret_addr;
	int cnt = LOOP_TIMES, graph = 0;
	FUNC4("Call Trace:\n");
	if (!FUNC0(CONFIG_FRAME_POINTER)) {
		while (!FUNC3(base_reg)) {
			ret_addr = *base_reg++;
			if (FUNC1(ret_addr)) {
				ret_addr = FUNC2(
						tsk, &graph, ret_addr, NULL);
				FUNC5(ret_addr);
			}
			if (--cnt < 0)
				break;
		}
	} else {
		while (!FUNC3((void *)base_reg) &&
		       !((unsigned long)base_reg & 0x3) &&
		       ((unsigned long)base_reg >= TASK_SIZE)) {
			unsigned long next_fp;
			ret_addr = base_reg[LP_OFFSET];
			next_fp = base_reg[FP_OFFSET];
			if (FUNC1(ret_addr)) {

				ret_addr = FUNC2(
						tsk, &graph, ret_addr, NULL);
				FUNC5(ret_addr);
			}
			if (--cnt < 0)
				break;
			base_reg = (unsigned long *)next_fp;
		}
	}
	FUNC4("\n");
}