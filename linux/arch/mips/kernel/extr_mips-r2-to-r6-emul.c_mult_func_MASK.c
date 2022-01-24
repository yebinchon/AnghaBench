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
struct pt_regs {int* regs; int lo; int hi; } ;
typedef  int s64 ;
typedef  int s32 ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  muls ; 

__attribute__((used)) static int FUNC3(struct pt_regs *regs, u32 ir)
{
	s64 res;
	s32 rt, rs;

	rt = regs->regs[FUNC1(ir)];
	rs = regs->regs[FUNC0(ir)];
	res = (s64)rt * (s64)rs;

	rs = res;
	regs->lo = (s64)rs;
	rt = res >> 32;
	res = (s64)rt;
	regs->hi = res;

	FUNC2(muls);

	return 0;
}