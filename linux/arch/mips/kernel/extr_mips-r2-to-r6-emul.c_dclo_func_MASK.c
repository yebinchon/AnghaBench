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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct pt_regs {int /*<<< orphan*/ * regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_32BIT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int SIGILL ; 
 int /*<<< orphan*/  bops ; 

__attribute__((used)) static int FUNC4(struct pt_regs *regs, u32 ir)
{
	u64 res;
	u64 rs;

	if (FUNC0(CONFIG_32BIT))
		return SIGILL;

	if (!FUNC1(ir))
		return 0;

	rs = regs->regs[FUNC2(ir)];
	__asm__ __volatile__("dclo %0, %1" : "=r"(res) : "r"(rs));
	regs->regs[FUNC1(ir)] = res;

	FUNC3(bops);

	return 0;
}