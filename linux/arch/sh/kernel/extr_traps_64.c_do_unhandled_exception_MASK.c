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
 int /*<<< orphan*/  FUNC0 (char*,struct pt_regs*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct pt_regs*) ; 

__attribute__((used)) static void FUNC3(int signr, char *str, unsigned long error,
				   struct pt_regs *regs)
{
	if (FUNC2(regs))
		FUNC1(signr);

	FUNC0(str, regs, error);
}