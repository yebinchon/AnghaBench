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
struct xive_irq_data {int /*<<< orphan*/  target; } ;
typedef  int /*<<< orphan*/  irq_hw_number_t ;
struct TYPE_2__ {int (* populate_irq_data ) (int /*<<< orphan*/ ,struct xive_irq_data*) ;} ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  XIVE_INVALID_TARGET ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,struct xive_irq_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct xive_irq_data*) ; 
 struct xive_irq_data* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct xive_irq_data*) ; 
 TYPE_1__* xive_ops ; 

__attribute__((used)) static int FUNC4(unsigned int virq, irq_hw_number_t hw)
{
	struct xive_irq_data *xd;
	int rc;

	xd = FUNC2(sizeof(struct xive_irq_data), GFP_KERNEL);
	if (!xd)
		return -ENOMEM;
	rc = xive_ops->populate_irq_data(hw, xd);
	if (rc) {
		FUNC1(xd);
		return rc;
	}
	xd->target = XIVE_INVALID_TARGET;
	FUNC0(virq, xd);

	return 0;
}