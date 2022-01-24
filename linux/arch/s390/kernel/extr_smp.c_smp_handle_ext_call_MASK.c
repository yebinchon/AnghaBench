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
struct TYPE_2__ {int /*<<< orphan*/  ec_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  ec_call_function_single ; 
 int /*<<< orphan*/  ec_schedule ; 
 int /*<<< orphan*/  ec_stop_cpu ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__* pcpu_devices ; 
 int /*<<< orphan*/  FUNC1 () ; 
 size_t FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,unsigned long*) ; 
 unsigned long FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(void)
{
	unsigned long bits;

	/* handle bit signal external calls */
	bits = FUNC5(&pcpu_devices[FUNC2()].ec_mask, 0);
	if (FUNC4(ec_stop_cpu, &bits))
		FUNC3();
	if (FUNC4(ec_schedule, &bits))
		FUNC1();
	if (FUNC4(ec_call_function_single, &bits))
		FUNC0();
}