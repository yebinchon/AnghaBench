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
typedef  int /*<<< orphan*/  u32 ;
struct megamod_pic {TYPE_1__* regs; int /*<<< orphan*/  irqhost; } ;
struct megamod_cascade_data {int index; struct megamod_pic* pic; } ;
struct irq_desc {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * evtclr; int /*<<< orphan*/ * mevtflag; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 struct megamod_cascade_data* FUNC2 (struct irq_desc*) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct irq_desc *desc)
{
	struct megamod_cascade_data *cascade;
	struct megamod_pic *pic;
	unsigned int irq;
	u32 events;
	int n, idx;

	cascade = FUNC2(desc);

	pic = cascade->pic;
	idx = cascade->index;

	while ((events = FUNC4(&pic->regs->mevtflag[idx])) != 0) {
		n = FUNC0(events);

		irq = FUNC3(pic->irqhost, idx * 32 + n);

		FUNC5(1 << n, &pic->regs->evtclr[idx]);

		FUNC1(irq);
	}
}