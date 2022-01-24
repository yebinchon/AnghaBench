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
struct pt_regs {scalar_t__* u_regs; scalar_t__ tpc; int /*<<< orphan*/  y; int /*<<< orphan*/  tnpc; int /*<<< orphan*/  tstate; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_DEFAULT ; 
 size_t UREG_FP ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,void*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long*) ; 

void FUNC5(struct pt_regs *regs)
{
	FUNC2(KERN_DEFAULT);

	FUNC1("TSTATE: %016lx TPC: %016lx TNPC: %016lx Y: %08x    %s\n", regs->tstate,
	       regs->tpc, regs->tnpc, regs->y, FUNC0());
	FUNC1("TPC: <%pS>\n", (void *) regs->tpc);
	FUNC1("g0: %016lx g1: %016lx g2: %016lx g3: %016lx\n",
	       regs->u_regs[0], regs->u_regs[1], regs->u_regs[2],
	       regs->u_regs[3]);
	FUNC1("g4: %016lx g5: %016lx g6: %016lx g7: %016lx\n",
	       regs->u_regs[4], regs->u_regs[5], regs->u_regs[6],
	       regs->u_regs[7]);
	FUNC1("o0: %016lx o1: %016lx o2: %016lx o3: %016lx\n",
	       regs->u_regs[8], regs->u_regs[9], regs->u_regs[10],
	       regs->u_regs[11]);
	FUNC1("o4: %016lx o5: %016lx sp: %016lx ret_pc: %016lx\n",
	       regs->u_regs[12], regs->u_regs[13], regs->u_regs[14],
	       regs->u_regs[15]);
	FUNC1("RPC: <%pS>\n", (void *) regs->u_regs[15]);
	FUNC3(regs);
	FUNC4(current, (unsigned long *) regs->u_regs[UREG_FP]);
}