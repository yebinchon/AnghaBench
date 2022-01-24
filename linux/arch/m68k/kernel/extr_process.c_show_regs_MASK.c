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
struct pt_regs {int sr; int /*<<< orphan*/  d1; int /*<<< orphan*/  d2; int /*<<< orphan*/  d3; int /*<<< orphan*/  d4; int /*<<< orphan*/  d5; int /*<<< orphan*/  a0; int /*<<< orphan*/  a1; int /*<<< orphan*/  a2; int /*<<< orphan*/  d0; int /*<<< orphan*/  orig_d0; int /*<<< orphan*/  pc; int /*<<< orphan*/  vector; int /*<<< orphan*/  format; } ;

/* Variables and functions */
 int PS_S ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 

void FUNC3(struct pt_regs * regs)
{
	FUNC0("Format %02x  Vector: %04x  PC: %08lx  Status: %04x    %s\n",
		regs->format, regs->vector, regs->pc, regs->sr,
		FUNC1());
	FUNC0("ORIG_D0: %08lx  D0: %08lx  A2: %08lx  A1: %08lx\n",
		regs->orig_d0, regs->d0, regs->a2, regs->a1);
	FUNC0("A0: %08lx  D5: %08lx  D4: %08lx\n", regs->a0, regs->d5,
		regs->d4);
	FUNC0("D3: %08lx  D2: %08lx  D1: %08lx\n", regs->d3, regs->d2,
		regs->d1);
	if (!(regs->sr & PS_S))
		FUNC0("USP: %08lx\n", FUNC2());
}