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
typedef  int u32 ;
struct pt_regs {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int VFP_EXCEPTION_ERROR ; 
 int VFP_NAN_FLAG ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int) ; 
 int FUNC3 (int,int) ; 
 scalar_t__ FUNC4 (int) ; 
 int FUNC5 (int,int) ; 

__attribute__((used)) static u32 FUNC6(u32 inst, u32 fpscr, struct pt_regs *regs)
{
	u32 exceptions = VFP_EXCEPTION_ERROR;

	FUNC2("VFP: emulate: INST=0x%08x SCR=0x%08x\n", inst, fpscr);

	if (FUNC1(inst)) {
		if (!FUNC0(inst)) {
			/*
			 * CPDO
			 */
			if (FUNC4(inst)) {
				exceptions = FUNC5(inst, fpscr);
			} else {
				exceptions = FUNC3(inst, fpscr);
			}
		} else {
			/*
			 * A CPRT instruction can not appear in FPINST2, nor
			 * can it cause an exception.  Therefore, we do not
			 * have to emulate it.
			 */
		}
	} else {
		/*
		 * A CPDT instruction can not appear in FPINST2, nor can
		 * it cause an exception.  Therefore, we do not have to
		 * emulate it.
		 */
	}
	return exceptions & ~VFP_NAN_FLAG;
}