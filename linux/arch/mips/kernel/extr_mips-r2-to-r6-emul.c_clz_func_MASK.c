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
typedef  int /*<<< orphan*/  u32 ;
struct pt_regs {int /*<<< orphan*/ * regs; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bops ; 

__attribute__((used)) static int FUNC3(struct pt_regs *regs, u32 ir)
{
	u32 res;
	u32 rs;

	if (!FUNC0(ir))
		return 0;

	rs = regs->regs[FUNC1(ir)];
	__asm__ __volatile__("clz %0, %1" : "=r"(res) : "r"(rs));
	regs->regs[FUNC0(ir)] = res;

	FUNC2(bops);

	return 0;
}