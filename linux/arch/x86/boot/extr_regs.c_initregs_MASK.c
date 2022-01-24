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
struct biosregs {int /*<<< orphan*/  gs; int /*<<< orphan*/  fs; void* es; void* ds; int /*<<< orphan*/  eflags; } ;

/* Variables and functions */
 int /*<<< orphan*/  X86_EFLAGS_CF ; 
 void* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct biosregs*,int /*<<< orphan*/ ,int) ; 

void FUNC4(struct biosregs *reg)
{
	FUNC3(reg, 0, sizeof(*reg));
	reg->eflags |= X86_EFLAGS_CF;
	reg->ds = FUNC0();
	reg->es = FUNC0();
	reg->fs = FUNC1();
	reg->gs = FUNC2();
}