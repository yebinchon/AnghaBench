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
struct TYPE_2__ {unsigned int (* powersave_bias_target ) (struct cpufreq_policy*,unsigned int,unsigned int) ;} ;

/* Variables and functions */
 TYPE_1__ od_ops ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 

void FUNC1(unsigned int (*f)
		(struct cpufreq_policy *, unsigned int, unsigned int),
		unsigned int powersave_bias)
{
	od_ops.powersave_bias_target = f;
	FUNC0(powersave_bias);
}