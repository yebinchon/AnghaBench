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
struct func_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BA ; 
 int G0 ; 
 int I0 ; 
 int I1 ; 
 int I2 ; 
 int I3 ; 
 int I7 ; 
 int /*<<< orphan*/  JMPL ; 
 int /*<<< orphan*/  JMPLI ; 
 int L0 ; 
 int L1 ; 
 int L2 ; 
 int L3 ; 
 int O0 ; 
 int O1 ; 
 int O2 ; 
 int O3 ; 
 int O6 ; 
 int O7 ; 
 int /*<<< orphan*/  OR ; 
 int /*<<< orphan*/  RESTORE ; 
 int /*<<< orphan*/  SAVEI ; 
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  THUNK_ICOUNT ; 
 int /*<<< orphan*/  FUNC1 (struct func_info* const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,...) ; 
 int rDATABASE ; 
 int rDATAMASK ; 
 int rPSTACK ; 
 int rVMDATA ; 
 int /*<<< orphan*/  FUNC3 (struct func_info* const,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct func_info * const fp)
{
	/* int vm_thunk(void *vmdata, int programstack, void *database, int datamask) */
	FUNC3(fp, THUNK_ICOUNT);

	FUNC2(OR, G0, O0, rVMDATA);
	FUNC2(OR, G0, O1, rPSTACK);
	FUNC2(OR, G0, O2, rDATABASE);
	FUNC2(BA, +4*17);
	FUNC2(OR, G0, O3, rDATAMASK);

	/* int call_thunk(int arg0, int arg1, int arg2, int (*func)(int int int)) */
#define CALL_THUNK_INSN_OFFSET		5
	FUNC2(SAVEI, O6, -FUNC0(64, 128), O6);

	FUNC2(OR, G0, rVMDATA, L0);
	FUNC2(OR, G0, rPSTACK, L1);
	FUNC2(OR, G0, rDATABASE, L2);
	FUNC2(OR, G0, rDATAMASK, L3);

	FUNC2(OR, G0, I0, O0);
	FUNC2(OR, G0, I1, O1);
	FUNC2(JMPL, I3, G0, O7);
	FUNC2(OR, G0, I2, O2);

	FUNC2(OR, G0, L0, rVMDATA);
	FUNC2(OR, G0, L1, rPSTACK);
	FUNC2(OR, G0, L2, rDATABASE);
	FUNC2(OR, G0, L3, rDATAMASK);

	FUNC2(JMPLI, I7, 8, G0);
	FUNC2(RESTORE, O0, G0, O0);

	FUNC1(fp);
}