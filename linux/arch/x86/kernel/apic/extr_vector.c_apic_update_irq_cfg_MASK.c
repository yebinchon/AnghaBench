#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct irq_data {int /*<<< orphan*/  irq; } ;
struct TYPE_3__ {unsigned int vector; int /*<<< orphan*/  dest_apicid; } ;
struct apic_chip_data {TYPE_1__ hw_irq_cfg; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* calc_dest_apicid ) (unsigned int) ;} ;

/* Variables and functions */
 TYPE_2__* apic ; 
 struct apic_chip_data* FUNC0 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct irq_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vector_lock ; 

__attribute__((used)) static void FUNC6(struct irq_data *irqd, unsigned int vector,
				unsigned int cpu)
{
	struct apic_chip_data *apicd = FUNC0(irqd);

	FUNC3(&vector_lock);

	apicd->hw_irq_cfg.vector = vector;
	apicd->hw_irq_cfg.dest_apicid = apic->calc_dest_apicid(cpu);
	FUNC2(irqd, FUNC1(cpu));
	FUNC5(irqd->irq, vector, cpu,
			    apicd->hw_irq_cfg.dest_apicid);
}