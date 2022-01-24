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
struct irq_data {scalar_t__ chip_data; } ;
struct grpci2_priv {TYPE_1__* regs; } ;
struct TYPE_2__ {int /*<<< orphan*/  ctrl; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  grpci2_dev_lock ; 
 struct grpci2_priv* grpci2priv ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct irq_data *data)
{
	unsigned long flags;
	unsigned int irqidx;
	struct grpci2_priv *priv = grpci2priv;

	irqidx = (unsigned int)data->chip_data - 1;
	if (irqidx > 3) /* only unmask PCI interrupts here */
		return;

	FUNC2(&grpci2_dev_lock, flags);
	FUNC1(priv->regs->ctrl, FUNC0(priv->regs->ctrl) | (1 << irqidx));
	FUNC3(&grpci2_dev_lock, flags);
}