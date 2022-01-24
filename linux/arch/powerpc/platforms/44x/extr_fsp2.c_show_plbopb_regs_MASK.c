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
typedef  scalar_t__ u32 ;

/* Variables and functions */
 scalar_t__ PLB4OPB_GEAR ; 
 scalar_t__ PLB4OPB_GEARU ; 
 scalar_t__ PLB4OPB_GESR0 ; 
 scalar_t__ PLB4OPB_GESR1 ; 
 scalar_t__ PLB4OPB_GESR2 ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 

__attribute__((used)) static void FUNC2(u32 base, int num)
{
	FUNC1("\nPLBOPB Bridge %d:\n", num);
	FUNC1("GESR0: 0x%08x\n", FUNC0(base + PLB4OPB_GESR0));
	FUNC1("GESR1: 0x%08x\n", FUNC0(base + PLB4OPB_GESR1));
	FUNC1("GESR2: 0x%08x\n", FUNC0(base + PLB4OPB_GESR2));
	FUNC1("GEARU: 0x%08x\n", FUNC0(base + PLB4OPB_GEARU));
	FUNC1("GEAR:  0x%08x\n", FUNC0(base + PLB4OPB_GEAR));
}