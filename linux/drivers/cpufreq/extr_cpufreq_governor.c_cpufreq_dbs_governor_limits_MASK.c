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
struct policy_dbs_info {int /*<<< orphan*/  update_mutex; } ;
struct cpufreq_policy {struct policy_dbs_info* governor_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cpufreq_policy*) ; 
 int /*<<< orphan*/  gov_dbs_data_mutex ; 
 int /*<<< orphan*/  FUNC1 (struct policy_dbs_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct cpufreq_policy *policy)
{
	struct policy_dbs_info *policy_dbs;

	/* Protect gov->gdbs_data against cpufreq_dbs_governor_exit() */
	FUNC2(&gov_dbs_data_mutex);
	policy_dbs = policy->governor_data;
	if (!policy_dbs)
		goto out;

	FUNC2(&policy_dbs->update_mutex);
	FUNC0(policy);
	FUNC1(policy_dbs, 0);
	FUNC3(&policy_dbs->update_mutex);

out:
	FUNC3(&gov_dbs_data_mutex);
}