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
typedef  scalar_t__ u32 ;
struct pt_regs {scalar_t__ nip; } ;

/* Variables and functions */
 scalar_t__ BREAK_INSTR ; 
 scalar_t__ BREAK_INSTR_SIZE ; 
 int /*<<< orphan*/  SIGTRAP ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct pt_regs*) ; 
 scalar_t__ FUNC1 (struct pt_regs*) ; 

__attribute__((used)) static int FUNC2(struct pt_regs *regs)
{
	if (FUNC1(regs))
		return 0;

	if (FUNC0(1, SIGTRAP, 0, regs) != 0)
		return 0;

	if (*(u32 *)regs->nip == BREAK_INSTR)
		regs->nip += BREAK_INSTR_SIZE;

	return 1;
}