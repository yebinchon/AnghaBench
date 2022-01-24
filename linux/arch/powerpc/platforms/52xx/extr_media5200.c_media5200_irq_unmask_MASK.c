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
typedef  int u32 ;
struct irq_data {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; scalar_t__ regs; } ;

/* Variables and functions */
 scalar_t__ MEDIA5200_IRQ_ENABLE ; 
 int MEDIA5200_IRQ_SHIFT ; 
 int FUNC0 (scalar_t__) ; 
 int FUNC1 (struct irq_data*) ; 
 TYPE_1__ media5200_irq ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct irq_data *d)
{
	unsigned long flags;
	u32 val;

	FUNC3(&media5200_irq.lock, flags);
	val = FUNC0(media5200_irq.regs + MEDIA5200_IRQ_ENABLE);
	val |= 1 << (MEDIA5200_IRQ_SHIFT + FUNC1(d));
	FUNC2(media5200_irq.regs + MEDIA5200_IRQ_ENABLE, val);
	FUNC4(&media5200_irq.lock, flags);
}