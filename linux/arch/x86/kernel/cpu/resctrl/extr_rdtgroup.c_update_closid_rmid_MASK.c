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
struct rdtgroup {int dummy; } ;
struct cpumask {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,struct cpumask const*) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct cpumask const*,int /*<<< orphan*/  (*) (struct rdtgroup*),struct rdtgroup*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rdtgroup*) ; 

__attribute__((used)) static void
FUNC5(const struct cpumask *cpu_mask, struct rdtgroup *r)
{
	int cpu = FUNC1();

	if (FUNC0(cpu, cpu_mask))
		FUNC4(r);
	FUNC3(cpu_mask, update_cpu_closid_rmid, r, 1);
	FUNC2();
}