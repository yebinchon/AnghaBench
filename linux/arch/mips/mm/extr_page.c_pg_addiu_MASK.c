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

/* Variables and functions */
 scalar_t__ DADDI_WAR ; 
 int /*<<< orphan*/  T9 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZERO ; 
 scalar_t__ cpu_has_64bit_gp_regs ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int) ; 
 unsigned int FUNC7 (unsigned int) ; 

__attribute__((used)) static inline void
FUNC8(u32 **buf, unsigned int reg1, unsigned int reg2, unsigned int off)
{
	if (cpu_has_64bit_gp_regs && DADDI_WAR && FUNC2()) {
		if (off > 0x7fff) {
			FUNC5(buf, T9, FUNC6(off));
			FUNC3(buf, T9, T9, FUNC7(off));
		} else
			FUNC3(buf, T9, ZERO, off);
		FUNC4(buf, reg1, reg2, T9);
	} else {
		if (off > 0x7fff) {
			FUNC5(buf, T9, FUNC6(off));
			FUNC3(buf, T9, T9, FUNC7(off));
			FUNC1(buf, reg1, reg2, T9);
		} else
			FUNC0(buf, reg1, reg2, off);
	}
}