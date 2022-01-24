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
struct irq_data {unsigned int irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXT_ENABLE_REG ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ mext_disabled ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

void FUNC2(struct irq_data *data)
{
	unsigned int irq = data->irq;

	if (irq >= 5 && irq <= 15) {
		mext_disabled--;
		if (mext_disabled > 0)
			FUNC1("q40_irq_enable : nested disable/enable\n");
		if (mext_disabled == 0)
			FUNC0(1, EXT_ENABLE_REG);
	}
}