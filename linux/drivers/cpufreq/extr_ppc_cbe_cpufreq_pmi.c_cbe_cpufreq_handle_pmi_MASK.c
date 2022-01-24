#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
struct freq_qos_request {int dummy; } ;
struct cpufreq_policy {TYPE_1__* freq_table; struct freq_qos_request* driver_data; } ;
struct TYPE_5__ {scalar_t__ type; size_t data1; size_t data2; } ;
typedef  TYPE_2__ pmi_message_t ;
struct TYPE_4__ {int /*<<< orphan*/  frequency; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ PMI_TYPE_FREQ_CHANGE ; 
 int FUNC1 (size_t) ; 
 struct cpufreq_policy* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct cpufreq_policy*) ; 
 int FUNC4 (struct freq_qos_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 

__attribute__((used)) static void FUNC7(pmi_message_t pmi_msg)
{
	struct cpufreq_policy *policy;
	struct freq_qos_request *req;
	u8 node, slow_mode;
	int cpu, ret;

	FUNC0(pmi_msg.type != PMI_TYPE_FREQ_CHANGE);

	node = pmi_msg.data1;
	slow_mode = pmi_msg.data2;

	cpu = FUNC1(node);

	FUNC5("cbe_handle_pmi: node: %d max_freq: %d\n", node, slow_mode);

	policy = FUNC2(cpu);
	if (!policy) {
		FUNC6("cpufreq policy not found cpu%d\n", cpu);
		return;
	}

	req = policy->driver_data;

	ret = FUNC4(req,
			policy->freq_table[slow_mode].frequency);
	if (ret < 0)
		FUNC6("Failed to update freq constraint: %d\n", ret);
	else
		FUNC5("limiting node %d to slow mode %d\n", node, slow_mode);

	FUNC3(policy);
}