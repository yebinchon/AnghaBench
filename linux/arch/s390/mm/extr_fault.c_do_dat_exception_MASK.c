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
typedef  int /*<<< orphan*/  vm_fault_t ;
struct pt_regs {int dummy; } ;

/* Variables and functions */
 int VM_EXEC ; 
 int VM_READ ; 
 int VM_WRITE ; 
 int /*<<< orphan*/  FUNC0 (struct pt_regs*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct pt_regs*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(struct pt_regs *regs)
{
	int access;
	vm_fault_t fault;

	access = VM_READ | VM_EXEC | VM_WRITE;
	fault = FUNC0(regs, access);
	if (FUNC2(fault))
		FUNC1(regs, access, fault);
}