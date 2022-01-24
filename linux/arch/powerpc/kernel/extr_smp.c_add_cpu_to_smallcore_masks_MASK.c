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
struct cpumask {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  cpu_l1_cache_map ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int,struct cpumask*) ; 
 int /*<<< orphan*/  has_big_cores ; 
 struct cpumask* FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int,int /*<<< orphan*/  (*) (int)) ; 
 int threads_per_core ; 

__attribute__((used)) static inline void FUNC7(int cpu)
{
	struct cpumask *this_l1_cache_map = FUNC5(cpu_l1_cache_map, cpu);
	int i, first_thread = FUNC0(cpu);

	if (!has_big_cores)
		return;

	FUNC3(cpu, FUNC2(cpu));

	for (i = first_thread; i < first_thread + threads_per_core; i++) {
		if (FUNC1(i) && FUNC4(i, this_l1_cache_map))
			FUNC6(i, cpu, cpu_smallcore_mask);
	}
}