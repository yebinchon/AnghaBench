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
struct clock_event_device {int /*<<< orphan*/  cpumask; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIE_STIE ; 
 int /*<<< orphan*/  FUNC0 (struct clock_event_device*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct clock_event_device* FUNC3 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  riscv_clock_event ; 
 int /*<<< orphan*/  riscv_timebase ; 
 int /*<<< orphan*/  sie ; 

__attribute__((used)) static int FUNC4(unsigned int cpu)
{
	struct clock_event_device *ce = FUNC3(&riscv_clock_event, cpu);

	ce->cpumask = FUNC1(cpu);
	FUNC0(ce, riscv_timebase, 100, 0x7fffffff);

	FUNC2(sie, SIE_STIE);
	return 0;
}