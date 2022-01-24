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
struct freq_qos_request {int dummy; } ;
struct cpufreq_policy {struct freq_qos_request* driver_data; TYPE_1__* freq_table; int /*<<< orphan*/  constraints; } ;
struct TYPE_2__ {int /*<<< orphan*/  frequency; } ;

/* Variables and functions */
 int /*<<< orphan*/  FREQ_QOS_MAX ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  cbe_cpufreq_has_pmi ; 
 int FUNC0 (int /*<<< orphan*/ *,struct freq_qos_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct freq_qos_request*) ; 
 struct freq_qos_request* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 

void FUNC4(struct cpufreq_policy *policy)
{
	struct freq_qos_request *req;
	int ret;

	if (!cbe_cpufreq_has_pmi)
		return;

	req = FUNC2(sizeof(*req), GFP_KERNEL);
	if (!req)
		return;

	ret = FUNC0(&policy->constraints, req, FREQ_QOS_MAX,
				   policy->freq_table[0].frequency);
	if (ret < 0) {
		FUNC3("Failed to add freq constraint (%d)\n", ret);
		FUNC1(req);
		return;
	}

	policy->driver_data = req;
}