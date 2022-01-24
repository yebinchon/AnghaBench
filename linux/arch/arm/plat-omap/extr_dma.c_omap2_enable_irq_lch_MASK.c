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
struct TYPE_2__ {int (* dma_read ) (int /*<<< orphan*/ ,int) ;int /*<<< orphan*/  (* dma_write ) (int,int /*<<< orphan*/ ,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  IRQENABLE_L0 ; 
 int /*<<< orphan*/  IRQSTATUS_L0 ; 
 int /*<<< orphan*/  dma_chan_lock ; 
 scalar_t__ FUNC0 () ; 
 TYPE_1__* p ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void FUNC6(int lch)
{
	u32 val;
	unsigned long flags;

	if (FUNC0())
		return;

	FUNC1(&dma_chan_lock, flags);
	/* clear IRQ STATUS */
	p->dma_write(1 << lch, IRQSTATUS_L0, lch);
	/* Enable interrupt */
	val = p->dma_read(IRQENABLE_L0, lch);
	val |= 1 << lch;
	p->dma_write(val, IRQENABLE_L0, lch);
	FUNC2(&dma_chan_lock, flags);
}