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
struct pt_regs {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AARCH64_INSN_SIZE ; 
 int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  arm64_ftr_reg_ctrel0 ; 
 unsigned long FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct pt_regs*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pt_regs*,int,unsigned long) ; 

__attribute__((used)) static void FUNC4(unsigned int esr, struct pt_regs *regs)
{
	int rt = FUNC0(esr);
	unsigned long val = FUNC1(&arm64_ftr_reg_ctrel0);

	FUNC3(regs, rt, val);

	FUNC2(regs, AARCH64_INSN_SIZE);
}