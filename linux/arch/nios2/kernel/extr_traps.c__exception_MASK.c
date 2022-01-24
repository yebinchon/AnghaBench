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
 int /*<<< orphan*/  FUNC0 (int,int,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct pt_regs*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct pt_regs*) ; 

void FUNC3(int signo, struct pt_regs *regs, int code, unsigned long addr)
{
	if (!FUNC2(regs))
		FUNC1("Exception in kernel mode", regs, signo);

	FUNC0(signo, code, addr);
}