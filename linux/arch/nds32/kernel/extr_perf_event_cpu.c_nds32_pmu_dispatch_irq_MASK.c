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
typedef  scalar_t__ u64 ;
struct nds32_pmu {int (* handle_irq ) (int,void*) ;} ;
typedef  int irqreturn_t ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int FUNC2 (int,void*) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *dev)
{
	struct nds32_pmu *nds32_pmu = (struct nds32_pmu *)dev;
	int ret;
	u64 start_clock, finish_clock;

	start_clock = FUNC0();
	ret = nds32_pmu->handle_irq(irq, dev);
	finish_clock = FUNC0();

	FUNC1(finish_clock - start_clock);
	return ret;
}