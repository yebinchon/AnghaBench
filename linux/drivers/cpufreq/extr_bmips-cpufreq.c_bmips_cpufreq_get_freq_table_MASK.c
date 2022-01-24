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
struct cpufreq_policy {int dummy; } ;
struct cpufreq_frequency_table {unsigned long frequency; int driver_data; } ;
struct TYPE_2__ {int max_freqs; int /*<<< orphan*/  clk_mult; } ;

/* Variables and functions */
 unsigned long CPUFREQ_TABLE_END ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct cpufreq_frequency_table* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 struct cpufreq_frequency_table* FUNC2 (int,int,int /*<<< orphan*/ ) ; 
 TYPE_1__* priv ; 

__attribute__((used)) static struct cpufreq_frequency_table *
FUNC3(const struct cpufreq_policy *policy)
{
	struct cpufreq_frequency_table *table;
	unsigned long cpu_freq;
	int i;

	cpu_freq = FUNC1(priv->clk_mult);

	table = FUNC2(priv->max_freqs + 1, sizeof(*table), GFP_KERNEL);
	if (!table)
		return FUNC0(-ENOMEM);

	for (i = 0; i < priv->max_freqs; i++) {
		table[i].frequency = cpu_freq / (1 << i);
		table[i].driver_data = i;
	}
	table[i].frequency = CPUFREQ_TABLE_END;

	return table;
}