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
 unsigned int ESR_ELx_EA ; 
 unsigned int ESR_ELx_EA_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 unsigned int ESR_ELx_FnV ; 
 unsigned int ESR_ELx_FnV_SHIFT ; 
 unsigned int ESR_ELx_IL ; 
 unsigned int ESR_ELx_S1PTW ; 
 unsigned int ESR_ELx_S1PTW_SHIFT ; 
 unsigned int ESR_ELx_SET_MASK ; 
 unsigned int ESR_ELx_SET_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 scalar_t__ FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

__attribute__((used)) static void FUNC5(unsigned int esr)
{
	FUNC4("Mem abort info:\n");

	FUNC4("  ESR = 0x%08x\n", esr);
	FUNC4("  EC = 0x%02lx: %s, IL = %u bits\n",
		 FUNC0(esr), FUNC2(esr),
		 (esr & ESR_ELx_IL) ? 32 : 16);
	FUNC4("  SET = %lu, FnV = %lu\n",
		 (esr & ESR_ELx_SET_MASK) >> ESR_ELx_SET_SHIFT,
		 (esr & ESR_ELx_FnV) >> ESR_ELx_FnV_SHIFT);
	FUNC4("  EA = %lu, S1PTW = %lu\n",
		 (esr & ESR_ELx_EA) >> ESR_ELx_EA_SHIFT,
		 (esr & ESR_ELx_S1PTW) >> ESR_ELx_S1PTW_SHIFT);

	if (FUNC3(esr))
		FUNC1(esr);
}