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
struct pt_regs {int dummy; } ;

/* Variables and functions */
 unsigned short STEP_OPCODE ; 
 int /*<<< orphan*/  FUNC0 (long) ; 
 int /*<<< orphan*/  FUNC1 (long,scalar_t__) ; 
 unsigned short* FUNC2 (struct pt_regs*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int stepped_address ; 
 int /*<<< orphan*/  stepped_opcode ; 

__attribute__((used)) static void FUNC4(struct pt_regs *linux_regs)
{
	/* Determine where the target instruction will send us to */
	unsigned short *addr = FUNC2(linux_regs);

	stepped_address = (int)addr;

	/* Replace it */
	stepped_opcode = FUNC0((long)addr);
	*addr = STEP_OPCODE;

	/* Flush and return */
	FUNC1((long)addr, (long)addr +
			   FUNC3(stepped_opcode));
}