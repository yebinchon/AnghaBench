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
typedef  enum omap_dma_channel_mode { ____Placeholder_omap_dma_channel_mode } omap_dma_channel_mode ;
struct TYPE_2__ {int (* dma_read ) (int /*<<< orphan*/ ,int) ;int /*<<< orphan*/  (* dma_write ) (int,int /*<<< orphan*/ ,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  LCH_CTRL ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_1__* p ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int) ; 

void FUNC4(int lch, enum omap_dma_channel_mode mode)
{
	if (FUNC0() && !FUNC1()) {
		u32 l;

		l = p->dma_read(LCH_CTRL, lch);
		l &= ~0x7;
		l |= mode;
		p->dma_write(l, LCH_CTRL, lch);
	}
}