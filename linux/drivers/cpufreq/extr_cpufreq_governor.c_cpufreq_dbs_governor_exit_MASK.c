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
struct policy_dbs_info {int /*<<< orphan*/  list; struct dbs_data* dbs_data; } ;
struct dbs_governor {int /*<<< orphan*/  (* exit ) (struct dbs_data*) ;int /*<<< orphan*/ * gdbs_data; } ;
struct dbs_data {int /*<<< orphan*/  attr_set; } ;
struct cpufreq_policy {struct policy_dbs_info* governor_data; } ;

/* Variables and functions */
 struct dbs_governor* FUNC0 (struct cpufreq_policy*) ; 
 int /*<<< orphan*/  FUNC1 (struct policy_dbs_info*,struct dbs_governor*) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  gov_dbs_data_mutex ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct dbs_data*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct dbs_data*) ; 

void FUNC8(struct cpufreq_policy *policy)
{
	struct dbs_governor *gov = FUNC0(policy);
	struct policy_dbs_info *policy_dbs = policy->governor_data;
	struct dbs_data *dbs_data = policy_dbs->dbs_data;
	unsigned int count;

	/* Protect gov->gdbs_data against concurrent updates. */
	FUNC5(&gov_dbs_data_mutex);

	count = FUNC2(&dbs_data->attr_set, &policy_dbs->list);

	policy->governor_data = NULL;

	if (!count) {
		if (!FUNC3())
			gov->gdbs_data = NULL;

		gov->exit(dbs_data);
		FUNC4(dbs_data);
	}

	FUNC1(policy_dbs, gov);

	FUNC6(&gov_dbs_data_mutex);
}