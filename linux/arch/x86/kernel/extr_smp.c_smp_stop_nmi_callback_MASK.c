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
 int NMI_HANDLED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stopping_cpu ; 

__attribute__((used)) static int FUNC4(unsigned int val, struct pt_regs *regs)
{
	/* We are registered on stopping cpu too, avoid spurious NMI */
	if (FUNC2() == FUNC0(&stopping_cpu))
		return NMI_HANDLED;

	FUNC1();
	FUNC3(NULL);

	return NMI_HANDLED;
}