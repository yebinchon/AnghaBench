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
struct irq_domain {int dummy; } ;
struct irq_data {int hwirq; struct bridge_irq_chip_data* chip_data; } ;
struct bridge_irq_chip_data {int /*<<< orphan*/  bc; } ;

/* Variables and functions */
 int /*<<< orphan*/  b_int_enable ; 
 int /*<<< orphan*/  b_wid_tflush ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct irq_domain *domain,
				     struct irq_data *irqd)
{
	struct bridge_irq_chip_data *data = irqd->chip_data;

	FUNC0(data->bc, b_int_enable, (1 << irqd->hwirq));
	FUNC1(data->bc, b_wid_tflush);
}