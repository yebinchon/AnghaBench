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
struct page {int dummy; } ;
typedef  scalar_t__ phys_addr_t ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;

/* Variables and functions */
 int DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (struct page*,unsigned long,size_t,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dmac_map_area ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (struct page*) ; 

__attribute__((used)) static void FUNC4(struct page *page, unsigned long off,
	size_t size, enum dma_data_direction dir)
{
	phys_addr_t paddr;

	FUNC0(page, off, size, dir, dmac_map_area);

	paddr = FUNC3(page) + off;
	if (dir == DMA_FROM_DEVICE) {
		FUNC2(paddr, paddr + size);
	} else {
		FUNC1(paddr, paddr + size);
	}
	/* FIXME: non-speculating: flush on bidirectional mappings? */
}