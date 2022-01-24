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
struct pt_regs {int pc; } ;

/* Variables and functions */
 int compiled_break ; 
 int /*<<< orphan*/  FUNC0 (struct pt_regs*,int) ; 
 scalar_t__ FUNC1 (char**,unsigned long*) ; 

__attribute__((used)) static void FUNC2(struct pt_regs *regs,
				char *remcom_in_buffer)
{
	unsigned long addr;
	char *ptr;

	ptr = &remcom_in_buffer[1];
	if (FUNC1(&ptr, &addr))
		FUNC0(regs, addr);
	else if (compiled_break == 1)
		FUNC0(regs, regs->pc + 4);

	compiled_break = 0;
}