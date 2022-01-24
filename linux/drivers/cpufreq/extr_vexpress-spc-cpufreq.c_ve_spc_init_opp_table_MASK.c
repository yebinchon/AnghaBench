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
struct device {int dummy; } ;
struct cpumask {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cpumask const*) ; 
 scalar_t__ FUNC1 (struct device*) ; 
 struct device* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(const struct cpumask *cpumask)
{
	struct device *cpu_dev = FUNC2(FUNC0(cpumask));
	/*
	 * platform specific SPC code must initialise the opp table
	 * so just check if the OPP count is non-zero
	 */
	return FUNC1(cpu_dev) <= 0;
}