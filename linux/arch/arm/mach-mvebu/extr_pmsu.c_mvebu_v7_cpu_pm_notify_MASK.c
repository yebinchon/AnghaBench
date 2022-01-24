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
struct notifier_block {int dummy; } ;

/* Variables and functions */
 unsigned long CPU_PM_ENTER ; 
 unsigned long CPU_PM_EXIT ; 
 int NOTIFY_OK ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mvebu_cpu_resume ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static int FUNC4(struct notifier_block *self,
				    unsigned long action, void *hcpu)
{
	if (action == CPU_PM_ENTER) {
		unsigned int hw_cpu = FUNC0(FUNC3());
		FUNC1(hw_cpu, mvebu_cpu_resume);
	} else if (action == CPU_PM_EXIT) {
		FUNC2();
	}

	return NOTIFY_OK;
}