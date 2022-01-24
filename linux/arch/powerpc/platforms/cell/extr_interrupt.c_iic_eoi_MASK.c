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
struct iic {size_t eoi_ptr; int /*<<< orphan*/ * eoi_stack; TYPE_1__* regs; } ;
struct TYPE_2__ {int /*<<< orphan*/  prio; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  cpu_iic ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct iic* FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct irq_data *d)
{
	struct iic *iic = FUNC2(&cpu_iic);
	FUNC1(&iic->regs->prio, iic->eoi_stack[--iic->eoi_ptr]);
	FUNC0(iic->eoi_ptr < 0);
}