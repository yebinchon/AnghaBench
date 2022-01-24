#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct irq_data {unsigned int irq; } ;
struct TYPE_4__ {int /*<<< orphan*/  scr; } ;
struct TYPE_3__ {int /*<<< orphan*/  mode; } ;

/* Variables and functions */
 unsigned int TXX9_IRQ_BASE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int TXx9_IRSCR_EIClrE ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ *) ; 
 TYPE_2__* txx9_ircptr ; 
 int /*<<< orphan*/  FUNC2 (struct irq_data*) ; 
 TYPE_1__* txx9irq ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct irq_data *d)
{
	unsigned int irq_nr = d->irq - TXX9_IRQ_BASE;

	FUNC2(d);
	/* clear edge detection */
	if (FUNC3(FUNC0(txx9irq[irq_nr].mode)))
		FUNC1(TXx9_IRSCR_EIClrE | irq_nr, &txx9_ircptr->scr);
}