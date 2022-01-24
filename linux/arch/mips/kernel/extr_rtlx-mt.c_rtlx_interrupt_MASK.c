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
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  rt_queue; int /*<<< orphan*/  lx_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int MIPS_CPU_RTLX_IRQ ; 
 int RTLX_CHANNELS ; 
 TYPE_1__* channel_wqs ; 
 unsigned int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *dev_id)
{
	unsigned int vpeflags;
	unsigned long flags;
	int i;

	FUNC4(flags);
	vpeflags = FUNC0();
	FUNC5(0x100 << MIPS_CPU_RTLX_IRQ);
	FUNC2();
	FUNC1(vpeflags);
	FUNC3(flags);

	for (i = 0; i < RTLX_CHANNELS; i++) {
		FUNC6(&channel_wqs[i].lx_queue);
		FUNC6(&channel_wqs[i].rt_queue);
	}

	return IRQ_HANDLED;
}