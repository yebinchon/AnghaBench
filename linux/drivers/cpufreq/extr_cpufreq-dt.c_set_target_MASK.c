#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct private_data {int /*<<< orphan*/  cpu_dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  max_freq; } ;
struct cpufreq_policy {TYPE_2__ cpuinfo; int /*<<< orphan*/  related_cpus; TYPE_1__* freq_table; struct private_data* driver_data; } ;
struct TYPE_3__ {unsigned long frequency; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static int FUNC2(struct cpufreq_policy *policy, unsigned int index)
{
	struct private_data *priv = policy->driver_data;
	unsigned long freq = policy->freq_table[index].frequency;
	int ret;

	ret = FUNC1(priv->cpu_dev, freq * 1000);

	if (!ret) {
		FUNC0(policy->related_cpus, freq,
				    policy->cpuinfo.max_freq);
	}

	return ret;
}