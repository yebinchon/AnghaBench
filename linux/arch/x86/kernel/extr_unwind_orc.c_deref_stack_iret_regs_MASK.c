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
struct unwind_state {int dummy; } ;
struct pt_regs {unsigned long ip; unsigned long sp; } ;

/* Variables and functions */
 void* IRET_FRAME_OFFSET ; 
 int /*<<< orphan*/  IRET_FRAME_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct unwind_state*,unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC1(struct unwind_state *state, unsigned long addr,
				  unsigned long *ip, unsigned long *sp)
{
	struct pt_regs *regs = (void *)addr - IRET_FRAME_OFFSET;

	if (!FUNC0(state, addr, IRET_FRAME_SIZE))
		return false;

	*ip = regs->ip;
	*sp = regs->sp;
	return true;
}