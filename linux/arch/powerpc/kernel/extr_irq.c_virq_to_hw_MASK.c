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
struct irq_data {int /*<<< orphan*/  hwirq; } ;
typedef  int /*<<< orphan*/  irq_hw_number_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 struct irq_data* FUNC1 (unsigned int) ; 

irq_hw_number_t FUNC2(unsigned int virq)
{
	struct irq_data *irq_data = FUNC1(virq);
	return FUNC0(!irq_data) ? 0 : irq_data->hwirq;
}