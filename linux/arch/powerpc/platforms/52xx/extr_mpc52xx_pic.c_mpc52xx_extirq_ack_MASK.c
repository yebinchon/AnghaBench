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
struct TYPE_2__ {int /*<<< orphan*/  ctrl; } ;

/* Variables and functions */
 int MPC52xx_IRQ_L2_MASK ; 
 TYPE_1__* intr ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (struct irq_data*) ; 

__attribute__((used)) static void FUNC2(struct irq_data *d)
{
	int l2irq = FUNC1(d) & MPC52xx_IRQ_L2_MASK;
	FUNC0(&intr->ctrl, 27-l2irq);
}