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
 int /*<<< orphan*/  FPEXC ; 
 int /*<<< orphan*/  FPSCR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(char *reason, u32 inst)
{
	int i;

	FUNC1("VFP: Error: %s\n", reason);
	FUNC1("VFP: EXC 0x%08x SCR 0x%08x INST 0x%08x\n",
		FUNC0(FPEXC), FUNC0(FPSCR), inst);
	for (i = 0; i < 32; i += 2)
		FUNC1("VFP: s%2u: 0x%08x s%2u: 0x%08x\n",
		       i, FUNC2(i), i+1, FUNC2(i+1));
}