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
typedef  int dma_addr_t ;
struct TYPE_2__ {int (* dma_read ) (int /*<<< orphan*/ ,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CDAC ; 
 int /*<<< orphan*/  CPC ; 
 int /*<<< orphan*/  CSAC ; 
 int /*<<< orphan*/  CSSA ; 
 int /*<<< orphan*/  DMA_ERRATA_3_3 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 (int) ; 
 TYPE_1__* p ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int) ; 
 int FUNC9 (int /*<<< orphan*/ ,int) ; 
 int FUNC10 (int /*<<< orphan*/ ,int) ; 

dma_addr_t FUNC11(int lch)
{
	dma_addr_t offset = 0;

	if (FUNC2())
		offset = p->dma_read(CPC, lch);
	else
		offset = p->dma_read(CSAC, lch);

	if (FUNC0(DMA_ERRATA_3_3) && offset == 0)
		offset = p->dma_read(CSAC, lch);

	if (!FUNC2()) {
		/*
		 * CDAC == 0 indicates that the DMA transfer on the channel has
		 * not been started (no data has been transferred so far).
		 * Return the programmed source start address in this case.
		 */
		if (FUNC3(p->dma_read(CDAC, lch)))
			offset = p->dma_read(CSAC, lch);
		else
			offset = p->dma_read(CSSA, lch);
	}

	if (FUNC1())
		offset |= (p->dma_read(CSSA, lch) & 0xFFFF0000);

	return offset;
}