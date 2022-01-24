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
struct TYPE_2__ {scalar_t__ irq; scalar_t__ handle_irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQF_PERCPU ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pmc_reserve_mutex ; 
 int FUNC2 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 TYPE_1__* riscv_pmu ; 

__attribute__((used)) static int FUNC3(void)
{
	int err = 0;

	FUNC0(&pmc_reserve_mutex);
	if (riscv_pmu->irq >= 0 && riscv_pmu->handle_irq) {
		err = FUNC2(riscv_pmu->irq, riscv_pmu->handle_irq,
				  IRQF_PERCPU, "riscv-base-perf", NULL);
	}
	FUNC1(&pmc_reserve_mutex);

	return err;
}