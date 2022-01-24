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
struct task_struct {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PSTR ; 
 int /*<<< orphan*/  SRESCR ; 
 int /*<<< orphan*/  WUPCR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (unsigned int) ; 

__attribute__((used)) static int FUNC3(unsigned int cpu, struct task_struct *idle)
{
	unsigned int lcpu = FUNC2(cpu);

	if (((FUNC0(PSTR) >> (4 * lcpu)) & 3) == 3)
		FUNC1(1 << lcpu, WUPCR);	/* wake up */
	else
		FUNC1(1 << lcpu, SRESCR);	/* reset */

	return 0;
}