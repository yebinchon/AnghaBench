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
struct mxc_extra_irq {int (* set_irq_fiq ) (int /*<<< orphan*/ ,unsigned int) ;} ;
struct irq_data {int dummy; } ;
struct irq_chip_generic {struct mxc_extra_irq* private; } ;

/* Variables and functions */
 int ENOSYS ; 
 struct irq_chip_generic* FUNC0 (unsigned int) ; 
 struct irq_data* FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct irq_data*) ; 
 int FUNC3 (int /*<<< orphan*/ ,unsigned int) ; 

int FUNC4(unsigned int irq, unsigned int type)
{
	struct irq_chip_generic *gc;
	struct mxc_extra_irq *exirq;
	int ret;

	ret = -ENOSYS;

	gc = FUNC0(irq);
	if (gc && gc->private) {
		exirq = gc->private;
		if (exirq->set_irq_fiq) {
			struct irq_data *d = FUNC1(irq);
			ret = exirq->set_irq_fiq(FUNC2(d), type);
		}
	}

	return ret;
}