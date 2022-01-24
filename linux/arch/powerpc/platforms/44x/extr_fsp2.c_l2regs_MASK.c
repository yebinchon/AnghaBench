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
 int /*<<< orphan*/  L2ARRSTAT0 ; 
 int /*<<< orphan*/  L2ARRSTAT1 ; 
 int /*<<< orphan*/  L2ARRSTAT2 ; 
 int /*<<< orphan*/  L2CPUSTAT ; 
 int /*<<< orphan*/  L2INT ; 
 int /*<<< orphan*/  L2LOG0 ; 
 int /*<<< orphan*/  L2LOG1 ; 
 int /*<<< orphan*/  L2LOG2 ; 
 int /*<<< orphan*/  L2LOG3 ; 
 int /*<<< orphan*/  L2LOG4 ; 
 int /*<<< orphan*/  L2LOG5 ; 
 int /*<<< orphan*/  L2MCK ; 
 int /*<<< orphan*/  L2PLBSTAT0 ; 
 int /*<<< orphan*/  L2PLBSTAT1 ; 
 int /*<<< orphan*/  L2RACSTAT0 ; 
 int /*<<< orphan*/  L2WACSTAT0 ; 
 int /*<<< orphan*/  L2WACSTAT1 ; 
 int /*<<< orphan*/  L2WACSTAT2 ; 
 int /*<<< orphan*/  L2WDFSTAT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void FUNC2(void)
{
	FUNC1("L2 Controller:\n");
	FUNC1("MCK:      0x%08x\n", FUNC0(L2MCK));
	FUNC1("INT:      0x%08x\n", FUNC0(L2INT));
	FUNC1("PLBSTAT0: 0x%08x\n", FUNC0(L2PLBSTAT0));
	FUNC1("PLBSTAT1: 0x%08x\n", FUNC0(L2PLBSTAT1));
	FUNC1("ARRSTAT0: 0x%08x\n", FUNC0(L2ARRSTAT0));
	FUNC1("ARRSTAT1: 0x%08x\n", FUNC0(L2ARRSTAT1));
	FUNC1("ARRSTAT2: 0x%08x\n", FUNC0(L2ARRSTAT2));
	FUNC1("CPUSTAT:  0x%08x\n", FUNC0(L2CPUSTAT));
	FUNC1("RACSTAT0: 0x%08x\n", FUNC0(L2RACSTAT0));
	FUNC1("WACSTAT0: 0x%08x\n", FUNC0(L2WACSTAT0));
	FUNC1("WACSTAT1: 0x%08x\n", FUNC0(L2WACSTAT1));
	FUNC1("WACSTAT2: 0x%08x\n", FUNC0(L2WACSTAT2));
	FUNC1("WDFSTAT:  0x%08x\n", FUNC0(L2WDFSTAT));
	FUNC1("LOG0:     0x%08x\n", FUNC0(L2LOG0));
	FUNC1("LOG1:     0x%08x\n", FUNC0(L2LOG1));
	FUNC1("LOG2:     0x%08x\n", FUNC0(L2LOG2));
	FUNC1("LOG3:     0x%08x\n", FUNC0(L2LOG3));
	FUNC1("LOG4:     0x%08x\n", FUNC0(L2LOG4));
	FUNC1("LOG5:     0x%08x\n", FUNC0(L2LOG5));
}