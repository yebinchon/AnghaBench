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
struct TYPE_2__ {int exists; int /*<<< orphan*/  chip; } ;
struct moxtet {TYPE_1__ irq; int /*<<< orphan*/  dev; } ;
struct irq_domain {struct moxtet* host_data; } ;
typedef  scalar_t__ irq_hw_number_t ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 int EINVAL ; 
 scalar_t__ MOXTET_NIRQS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  handle_level_irq ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,struct moxtet*) ; 

__attribute__((used)) static int FUNC4(struct irq_domain *d, unsigned int irq,
				 irq_hw_number_t hw)
{
	struct moxtet *moxtet = d->host_data;

	if (hw >= MOXTET_NIRQS || !(moxtet->irq.exists & FUNC0(hw))) {
		FUNC1(moxtet->dev, "Invalid hw irq number\n");
		return -EINVAL;
	}

	FUNC3(irq, d->host_data);
	FUNC2(irq, &moxtet->irq.chip, handle_level_irq);

	return 0;
}