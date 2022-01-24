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
struct policy_dbs_info {int work_in_progress; int /*<<< orphan*/  work_count; int /*<<< orphan*/  work; int /*<<< orphan*/  irq_work; int /*<<< orphan*/  policy; } ;
struct cpufreq_policy {struct policy_dbs_info* governor_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct cpufreq_policy *policy)
{
	struct policy_dbs_info *policy_dbs = policy->governor_data;

	FUNC2(policy_dbs->policy);
	FUNC3(&policy_dbs->irq_work);
	FUNC1(&policy_dbs->work);
	FUNC0(&policy_dbs->work_count, 0);
	policy_dbs->work_in_progress = false;
}