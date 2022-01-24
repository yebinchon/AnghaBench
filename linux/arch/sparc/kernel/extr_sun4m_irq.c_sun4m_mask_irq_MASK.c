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
struct sun4m_handler_data {scalar_t__ mask; scalar_t__ percpu; } ;
struct irq_data {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  mask_set; } ;
struct TYPE_3__ {int /*<<< orphan*/  set; } ;

/* Variables and functions */
 struct sun4m_handler_data* FUNC0 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ *) ; 
 int FUNC4 () ; 
 TYPE_2__* sun4m_irq_global ; 
 TYPE_1__** sun4m_irq_percpu ; 

__attribute__((used)) static void FUNC5(struct irq_data *data)
{
	struct sun4m_handler_data *handler_data;
	int cpu = FUNC4();

	handler_data = FUNC0(data);
	if (handler_data->mask) {
		unsigned long flags;

		FUNC2(flags);
		if (handler_data->percpu) {
			FUNC3(handler_data->mask, &sun4m_irq_percpu[cpu]->set);
		} else {
			FUNC3(handler_data->mask, &sun4m_irq_global->mask_set);
		}
		FUNC1(flags);
	}
}