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
 struct cpumask CPU_MASK_NONE ; 
 int FUNC0 (struct cpumask*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,struct cpumask*) ; 

__attribute__((used)) static bool FUNC2(int cpu, int vector)
{
	struct cpumask mask = CPU_MASK_NONE;

	FUNC1(cpu, &mask);
	return FUNC0(&mask, vector);
}