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
 int FUNC0 (unsigned long*,int,unsigned long*) ; 
 unsigned long FUNC1 (int,struct pt_regs*) ; 
 unsigned long* FUNC2 (int,struct pt_regs*) ; 

__attribute__((used)) static int FUNC3(int reg_num, int size, unsigned long *dst_addr,
			struct pt_regs *regs)
{
	unsigned long zero[2] = { 0, 0 };
	unsigned long *src_val;

	if (reg_num)
		src_val = FUNC2(reg_num, regs);
	else {
		src_val = &zero[0];
		if (size == 8)
			zero[1] = FUNC1(1, regs);
	}
	return FUNC0(dst_addr, size, src_val);
}