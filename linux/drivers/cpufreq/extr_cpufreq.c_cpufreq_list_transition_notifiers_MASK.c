#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct notifier_block {int /*<<< orphan*/  notifier_call; struct notifier_block* next; } ;
struct TYPE_2__ {int /*<<< orphan*/  mutex; struct notifier_block* head; } ;

/* Variables and functions */
 TYPE_1__ cpufreq_transition_notifier_list ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static void FUNC3(void)
{
	struct notifier_block *nb;

	FUNC2("Registered transition notifiers:\n");

	FUNC0(&cpufreq_transition_notifier_list.mutex);

	for (nb = cpufreq_transition_notifier_list.head; nb; nb = nb->next)
		FUNC2("%pS\n", nb->notifier_call);

	FUNC1(&cpufreq_transition_notifier_list.mutex);
}