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
typedef  enum bcsr_id { ____Placeholder_bcsr_id } bcsr_id ;
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  raddr; } ;

/* Variables and functions */
 unsigned short FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned short,int /*<<< orphan*/ ) ; 
 TYPE_1__* bcsr_regs ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 () ; 

void FUNC5(enum bcsr_id reg, unsigned short clr, unsigned short set)
{
	unsigned short r;
	unsigned long flags;

	FUNC2(&bcsr_regs[reg].lock, flags);
	r = FUNC0(bcsr_regs[reg].raddr);
	r &= ~clr;
	r |= set;
	FUNC1(r, bcsr_regs[reg].raddr);
	FUNC4();
	FUNC3(&bcsr_regs[reg].lock, flags);
}