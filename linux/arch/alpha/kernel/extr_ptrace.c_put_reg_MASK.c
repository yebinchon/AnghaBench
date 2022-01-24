#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct task_struct {int dummy; } ;
struct TYPE_2__ {unsigned long ieee_state; } ;

/* Variables and functions */
 unsigned long FPCR_DYN_MASK ; 
 unsigned long IEEE_SW_MASK ; 
 unsigned long* FUNC0 (struct task_struct*,unsigned long) ; 
 unsigned long FUNC1 (unsigned long) ; 
 TYPE_1__* FUNC2 (struct task_struct*) ; 

__attribute__((used)) static int
FUNC3(struct task_struct *task, unsigned long regno, unsigned long data)
{
	if (regno == 63) {
		FUNC2(task)->ieee_state
		  = ((FUNC2(task)->ieee_state & ~IEEE_SW_MASK)
		     | (data & IEEE_SW_MASK));
		data = (data & FPCR_DYN_MASK) | FUNC1(data);
	}
	*FUNC0(task, regno) = data;
	return 0;
}