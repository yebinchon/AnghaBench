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
struct cpumask {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* send_IPI_mask_allbutself ) (struct cpumask const*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cpumask const*,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,struct cpumask*) ; 
 int /*<<< orphan*/  FUNC2 (struct cpumask*,struct cpumask const*) ; 
 TYPE_1__ orig_apic ; 
 unsigned int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct cpumask const*,int) ; 

__attribute__((used)) static void FUNC5(const struct cpumask *mask, int vector)
{
	unsigned int this_cpu = FUNC3();
	struct cpumask new_mask;
	const struct cpumask *local_mask;

	FUNC2(&new_mask, mask);
	FUNC1(this_cpu, &new_mask);
	local_mask = &new_mask;
	if (!FUNC0(local_mask, vector))
		orig_apic.send_IPI_mask_allbutself(mask, vector);
}