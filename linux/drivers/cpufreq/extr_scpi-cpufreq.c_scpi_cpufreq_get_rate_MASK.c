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
struct scpi_data {int /*<<< orphan*/  clk; } ;
struct cpufreq_policy {struct scpi_data* driver_data; } ;

/* Variables and functions */
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 struct cpufreq_policy* FUNC1 (unsigned int) ; 

__attribute__((used)) static unsigned int FUNC2(unsigned int cpu)
{
	struct cpufreq_policy *policy = FUNC1(cpu);
	struct scpi_data *priv = policy->driver_data;
	unsigned long rate = FUNC0(priv->clk);

	return rate / 1000;
}