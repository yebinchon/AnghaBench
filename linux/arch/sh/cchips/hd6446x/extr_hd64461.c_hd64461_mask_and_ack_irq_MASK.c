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
struct irq_data {scalar_t__ irq; } ;

/* Variables and functions */
 scalar_t__ HD64461_IRQBASE ; 
 int /*<<< orphan*/  HD64461_PCC1CSCR ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct irq_data*) ; 

__attribute__((used)) static void FUNC2(struct irq_data *data)
{
	FUNC1(data);

#ifdef CONFIG_HD64461_ENABLER
	if (data->irq == HD64461_IRQBASE + 13)
		__raw_writeb(0x00, HD64461_PCC1CSCR);
#endif
}