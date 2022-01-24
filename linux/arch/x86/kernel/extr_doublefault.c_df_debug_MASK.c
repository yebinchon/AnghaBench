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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,long) ; 
 int /*<<< orphan*/  FUNC2 (struct pt_regs*) ; 

void FUNC3(struct pt_regs *regs, long error_code)
{
	FUNC1("PANIC: double fault, error_code: 0x%lx\n", error_code);
	FUNC2(regs);
	FUNC0("Machine halted.");
}