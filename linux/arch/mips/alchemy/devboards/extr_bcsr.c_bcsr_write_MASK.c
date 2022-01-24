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
 int /*<<< orphan*/  FUNC0 (unsigned short,int /*<<< orphan*/ ) ; 
 TYPE_1__* bcsr_regs ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 () ; 

void FUNC4(enum bcsr_id reg, unsigned short val)
{
	unsigned long flags;

	FUNC1(&bcsr_regs[reg].lock, flags);
	FUNC0(val, bcsr_regs[reg].raddr);
	FUNC3();
	FUNC2(&bcsr_regs[reg].lock, flags);
}