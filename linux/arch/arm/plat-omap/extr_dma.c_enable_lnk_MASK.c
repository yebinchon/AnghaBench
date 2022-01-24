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
typedef  int u32 ;
struct TYPE_4__ {int next_lch; int next_linked_ch; } ;
struct TYPE_3__ {int (* dma_read ) (int /*<<< orphan*/ ,int) ;int /*<<< orphan*/  (* dma_write ) (int,int /*<<< orphan*/ ,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CLNK_CTRL ; 
 TYPE_2__* dma_chan ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 TYPE_1__* p ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void FUNC4(int lch)
{
	u32 l;

	l = p->dma_read(CLNK_CTRL, lch);

	if (FUNC0())
		l &= ~(1 << 14);

	/* Set the ENABLE_LNK bits */
	if (dma_chan[lch].next_lch != -1)
		l = dma_chan[lch].next_lch | (1 << 15);

#ifndef CONFIG_ARCH_OMAP1
	if (FUNC1())
		if (dma_chan[lch].next_linked_ch != -1)
			l = dma_chan[lch].next_linked_ch | (1 << 15);
#endif

	p->dma_write(l, CLNK_CTRL, lch);
}