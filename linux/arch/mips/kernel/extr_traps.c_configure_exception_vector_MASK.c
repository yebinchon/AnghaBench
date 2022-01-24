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

/* Variables and functions */
 int /*<<< orphan*/  CAUSEF_IV ; 
 int MIPS_EBASE_WG ; 
 int /*<<< orphan*/  ST0_BEV ; 
 int /*<<< orphan*/  VECTORSPACING ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ cpu_has_divec ; 
 scalar_t__ cpu_has_ebase_wg ; 
 scalar_t__ cpu_has_mips_r2_r6 ; 
 scalar_t__ cpu_has_mipsmt ; 
 scalar_t__ cpu_has_veic ; 
 scalar_t__ cpu_has_vint ; 
 unsigned int FUNC1 () ; 
 int ebase ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (unsigned long) ; 

__attribute__((used)) static void FUNC8(void)
{
	if (cpu_has_mips_r2_r6) {
		unsigned long sr = FUNC4(ST0_BEV);
		/* If available, use WG to set top bits of EBASE */
		if (cpu_has_ebase_wg) {
#ifdef CONFIG_64BIT
			write_c0_ebase_64(ebase | MIPS_EBASE_WG);
#else
			FUNC5(ebase | MIPS_EBASE_WG);
#endif
		}
		FUNC5(ebase);
		FUNC7(sr);
	}
	if (cpu_has_veic || cpu_has_vint) {
		/* Setting vector spacing enables EI/VI mode  */
		FUNC0(0x3e0, VECTORSPACING);
	}
	if (cpu_has_divec) {
		if (cpu_has_mipsmt) {
			unsigned int vpflags = FUNC1();
			FUNC3(CAUSEF_IV);
			FUNC2(vpflags);
		} else
			FUNC3(CAUSEF_IV);
	}
}