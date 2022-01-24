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
struct pt_regs {int /*<<< orphan*/  pc; } ;

/* Variables and functions */
 int /*<<< orphan*/  AARCH64_INSN_SIZE ; 
#define  ESR_ELx_SYS64_ISS_CRM_DC_CIVAC 133 
#define  ESR_ELx_SYS64_ISS_CRM_DC_CVAC 132 
#define  ESR_ELx_SYS64_ISS_CRM_DC_CVADP 131 
#define  ESR_ELx_SYS64_ISS_CRM_DC_CVAP 130 
#define  ESR_ELx_SYS64_ISS_CRM_DC_CVAU 129 
#define  ESR_ELx_SYS64_ISS_CRM_IC_IVAU 128 
 unsigned int ESR_ELx_SYS64_ISS_CRM_MASK ; 
 unsigned int ESR_ELx_SYS64_ISS_CRM_SHIFT ; 
 int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  ILL_ILLOPC ; 
 int /*<<< orphan*/  SIGILL ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct pt_regs*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pt_regs*,int) ; 
 unsigned long FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(unsigned int esr, struct pt_regs *regs)
{
	unsigned long address;
	int rt = FUNC0(esr);
	int crm = (esr & ESR_ELx_SYS64_ISS_CRM_MASK) >> ESR_ELx_SYS64_ISS_CRM_SHIFT;
	int ret = 0;

	address = FUNC6(FUNC5(regs, rt));

	switch (crm) {
	case ESR_ELx_SYS64_ISS_CRM_DC_CVAU:	/* DC CVAU, gets promoted */
		FUNC1("dc civac", address, ret);
		break;
	case ESR_ELx_SYS64_ISS_CRM_DC_CVAC:	/* DC CVAC, gets promoted */
		FUNC1("dc civac", address, ret);
		break;
	case ESR_ELx_SYS64_ISS_CRM_DC_CVADP:	/* DC CVADP */
		FUNC1("sys 3, c7, c13, 1", address, ret);
		break;
	case ESR_ELx_SYS64_ISS_CRM_DC_CVAP:	/* DC CVAP */
		FUNC1("sys 3, c7, c12, 1", address, ret);
		break;
	case ESR_ELx_SYS64_ISS_CRM_DC_CIVAC:	/* DC CIVAC */
		FUNC1("dc civac", address, ret);
		break;
	case ESR_ELx_SYS64_ISS_CRM_IC_IVAU:	/* IC IVAU */
		FUNC1("ic ivau", address, ret);
		break;
	default:
		FUNC4(SIGILL, ILL_ILLOPC, regs->pc);
		return;
	}

	if (ret)
		FUNC2(address);
	else
		FUNC3(regs, AARCH64_INSN_SIZE);
}