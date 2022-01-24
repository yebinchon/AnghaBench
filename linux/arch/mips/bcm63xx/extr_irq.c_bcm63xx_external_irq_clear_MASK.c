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
typedef  int /*<<< orphan*/  u32 ;
struct irq_data {unsigned int irq; } ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 unsigned int IRQ_EXTERNAL_BASE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  epic_lock ; 
 int /*<<< orphan*/  FUNC5 (unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC8(struct irq_data *d)
{
	unsigned int irq = d->irq - IRQ_EXTERNAL_BASE;
	u32 reg, regaddr;
	unsigned long flags;

	regaddr = FUNC5(irq);
	FUNC6(&epic_lock, flags);
	reg = FUNC3(regaddr);

	if (FUNC0())
		reg |= FUNC2(irq % 4);
	else
		reg |= FUNC1(irq % 4);

	FUNC4(reg, regaddr);
	FUNC7(&epic_lock, flags);
}