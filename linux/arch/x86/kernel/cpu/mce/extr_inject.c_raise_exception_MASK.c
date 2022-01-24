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
struct pt_regs {int /*<<< orphan*/  cs; int /*<<< orphan*/  ip; } ;
struct mce {scalar_t__ finished; int /*<<< orphan*/  cs; int /*<<< orphan*/  ip; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pt_regs*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct pt_regs*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct mce *m, struct pt_regs *pregs)
{
	struct pt_regs regs;
	unsigned long flags;

	if (!pregs) {
		FUNC3(&regs, 0, sizeof(struct pt_regs));
		regs.ip = m->ip;
		regs.cs = m->cs;
		pregs = &regs;
	}
	/* in mcheck exeception handler, irq will be disabled */
	FUNC2(flags);
	FUNC0(pregs, 0);
	FUNC1(flags);
	m->finished = 0;
}