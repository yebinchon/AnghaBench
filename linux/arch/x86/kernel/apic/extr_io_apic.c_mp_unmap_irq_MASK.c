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
struct mp_chip_data {scalar_t__ count; scalar_t__ isa_irq; } ;
struct irq_data {struct mp_chip_data* chip_data; int /*<<< orphan*/  domain; } ;

/* Variables and functions */
 int /*<<< orphan*/  ioapic_mutex ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 struct irq_data* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(int irq)
{
	struct irq_data *irq_data = FUNC1(irq);
	struct mp_chip_data *data;

	if (!irq_data || !irq_data->domain)
		return;

	data = irq_data->chip_data;
	if (!data || data->isa_irq)
		return;

	FUNC2(&ioapic_mutex);
	if (--data->count == 0)
		FUNC0(irq, 1);
	FUNC3(&ioapic_mutex);
}