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
struct cpuinfo_x86 {scalar_t__ x86_capability; } ;

/* Variables and functions */
 int /*<<< orphan*/  boot_cpu_data ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned int) ; 
 scalar_t__ cpu_caps_cleared ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,unsigned long*) ; 

__attribute__((used)) static inline void FUNC3(struct cpuinfo_x86 *c, unsigned int feature)
{
	/*
	 * Note: This could use the non atomic __*_bit() variants, but the
	 * rest of the cpufeature code uses atomics as well, so keep it for
	 * consistency. Cleanup all of it separately.
	 */
	if (!c) {
		FUNC1(&boot_cpu_data, feature);
		FUNC2(feature, (unsigned long *)cpu_caps_cleared);
	} else {
		FUNC0(feature, (unsigned long *)c->x86_capability);
	}
}