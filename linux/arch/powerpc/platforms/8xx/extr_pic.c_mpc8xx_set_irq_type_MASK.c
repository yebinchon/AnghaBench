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
struct irq_data {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  sc_siel; } ;

/* Variables and functions */
 unsigned int IRQ_TYPE_EDGE_FALLING ; 
 int /*<<< orphan*/  handle_edge_irq ; 
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct irq_data*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct irq_data*) ; 
 unsigned int FUNC3 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned int) ; 
 TYPE_1__* siu_reg ; 

__attribute__((used)) static int FUNC5(struct irq_data *d, unsigned int flow_type)
{
	/* only external IRQ senses are programmable */
	if ((flow_type & IRQ_TYPE_EDGE_FALLING) && !(FUNC2(d) & 1)) {
		unsigned int siel = FUNC0(&siu_reg->sc_siel);
		siel |= FUNC3(d);
		FUNC4(&siu_reg->sc_siel, siel);
		FUNC1(d, handle_edge_irq);
	}
	return 0;
}