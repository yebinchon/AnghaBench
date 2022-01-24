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
struct nlm_pic_irq {TYPE_1__* node; int /*<<< orphan*/  irt; } ;
struct irq_data {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  piclock; int /*<<< orphan*/  picbase; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct nlm_pic_irq* FUNC1 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct irq_data *d)
{
	unsigned long flags;
	struct nlm_pic_irq *pd = FUNC1(d);

	FUNC0(!pd);
	FUNC3(&pd->node->piclock, flags);
	FUNC2(pd->node->picbase, pd->irt);
	FUNC4(&pd->node->piclock, flags);
}