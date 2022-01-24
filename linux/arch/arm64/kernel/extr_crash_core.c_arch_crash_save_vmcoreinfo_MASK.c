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
 int /*<<< orphan*/  PHYS_OFFSET ; 
 int /*<<< orphan*/  VA_BITS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  kimage_voffset ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 

void FUNC3(void)
{
	FUNC0(VA_BITS);
	/* Please note VMCOREINFO_NUMBER() uses "%d", not "%x" */
	FUNC2("NUMBER(kimage_voffset)=0x%llx\n",
						kimage_voffset);
	FUNC2("NUMBER(PHYS_OFFSET)=0x%llx\n",
						PHYS_OFFSET);
	FUNC2("KERNELOFFSET=%lx\n", FUNC1());
}