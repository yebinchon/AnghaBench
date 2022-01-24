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
 int /*<<< orphan*/  C0_EBASE ; 
 int /*<<< orphan*/  MIPS_EBASE_WG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ cpu_has_ebase_wg ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC3(u32 **p, unsigned int reg)
{
	if (cpu_has_ebase_wg) {
		/* Set WG so that all the bits get written */
		FUNC2(p, reg, reg, MIPS_EBASE_WG);
		FUNC0(p, reg, C0_EBASE);
	} else {
		FUNC1(p, reg, C0_EBASE);
	}
}