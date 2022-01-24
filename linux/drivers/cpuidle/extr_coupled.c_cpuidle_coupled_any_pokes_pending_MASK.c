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
struct cpuidle_coupled {int /*<<< orphan*/  coupled_cpus; } ;
typedef  int /*<<< orphan*/  cpumask_t ;

/* Variables and functions */
 int /*<<< orphan*/ * cpu_online_mask ; 
 int /*<<< orphan*/  cpuidle_coupled_poke_pending ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC1(struct cpuidle_coupled *coupled)
{
	cpumask_t cpus;
	int ret;

	FUNC0(&cpus, cpu_online_mask, &coupled->coupled_cpus);
	ret = FUNC0(&cpus, &cpuidle_coupled_poke_pending, &cpus);

	return ret;
}