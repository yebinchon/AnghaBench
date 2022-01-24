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
struct cpuidle_coupled {int /*<<< orphan*/  ready_waiting_counts; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_WAITING_CPUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,struct cpuidle_coupled*) ; 

__attribute__((used)) static void FUNC2(int cpu, struct cpuidle_coupled *coupled)
{
	FUNC1(cpu, coupled);
	FUNC0(MAX_WAITING_CPUS, &coupled->ready_waiting_counts);
}