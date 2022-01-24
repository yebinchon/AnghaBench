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
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (unsigned long*,int,unsigned long,int) ; 
 scalar_t__ FUNC2 (int,struct pt_regs*) ; 
 unsigned long* FUNC3 (int,struct pt_regs*) ; 
 unsigned long FUNC4 (unsigned long) ; 
 unsigned long FUNC5 (unsigned long) ; 
 unsigned long FUNC6 (unsigned long) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static inline int FUNC8(int reg_num, int size, unsigned long *dst_addr,
			       struct pt_regs *regs, int asi, int orig_asi)
{
	unsigned long zero = 0;
	unsigned long *src_val_p = &zero;
	unsigned long src_val;

	if (size == 16) {
		size = 8;
		zero = (((long)(reg_num ?
		        (unsigned int)FUNC2(reg_num, regs) : 0)) << 32) |
			(unsigned int)FUNC2(reg_num + 1, regs);
	} else if (reg_num) {
		src_val_p = FUNC3(reg_num, regs);
	}
	src_val = *src_val_p;
	if (FUNC7(asi != orig_asi)) {
		switch (size) {
		case 2:
			src_val = FUNC4(src_val);
			break;
		case 4:
			src_val = FUNC5(src_val);
			break;
		case 8:
			src_val = FUNC6(src_val);
			break;
		case 16:
		default:
			FUNC0();
			break;
		}
	}
	return FUNC1(dst_addr, size, src_val, asi);
}