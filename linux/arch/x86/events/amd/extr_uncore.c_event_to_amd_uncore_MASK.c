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
struct perf_event {int /*<<< orphan*/  cpu; } ;
struct amd_uncore {int dummy; } ;

/* Variables and functions */
 scalar_t__ amd_uncore_llc ; 
 scalar_t__ amd_uncore_nb ; 
 scalar_t__ FUNC0 (struct perf_event*) ; 
 scalar_t__ FUNC1 (struct perf_event*) ; 
 struct amd_uncore** FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct amd_uncore *FUNC3(struct perf_event *event)
{
	if (FUNC1(event) && amd_uncore_nb)
		return *FUNC2(amd_uncore_nb, event->cpu);
	else if (FUNC0(event) && amd_uncore_llc)
		return *FUNC2(amd_uncore_llc, event->cpu);

	return NULL;
}