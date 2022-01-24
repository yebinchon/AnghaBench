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
struct private_data {int /*<<< orphan*/  opp_table; scalar_t__ reg_name; scalar_t__ have_static_opps; int /*<<< orphan*/  cpu_dev; } ;
struct cpufreq_policy {int /*<<< orphan*/  clk; int /*<<< orphan*/  related_cpus; int /*<<< orphan*/  freq_table; struct private_data* driver_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct private_data*) ; 

__attribute__((used)) static int FUNC5(struct cpufreq_policy *policy)
{
	struct private_data *priv = policy->driver_data;

	FUNC1(priv->cpu_dev, &policy->freq_table);
	if (priv->have_static_opps)
		FUNC2(policy->related_cpus);
	if (priv->reg_name)
		FUNC3(priv->opp_table);

	FUNC0(policy->clk);
	FUNC4(priv);

	return 0;
}