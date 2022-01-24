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
typedef  int u32 ;
struct irq_data {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ gef_pic_irq_reg_base ; 
 int /*<<< orphan*/  gef_pic_lock ; 
 int FUNC1 (scalar_t__) ; 
 unsigned int FUNC2 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct irq_data *d)
{
	unsigned long flags;
	unsigned int hwirq = FUNC2(d);
	u32 mask;

	FUNC4(&gef_pic_lock, flags);
	mask = FUNC1(gef_pic_irq_reg_base + FUNC0(0));
	mask &= ~(1 << hwirq);
	FUNC3(gef_pic_irq_reg_base + FUNC0(0), mask);
	FUNC5(&gef_pic_lock, flags);
}