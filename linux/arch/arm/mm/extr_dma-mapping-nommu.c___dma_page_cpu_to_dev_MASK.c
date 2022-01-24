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
typedef  scalar_t__ phys_addr_t ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;

/* Variables and functions */
 int DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,size_t,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC4(phys_addr_t paddr, size_t size,
				  enum dma_data_direction dir)
{
	FUNC1(FUNC0(paddr), size, dir);

	if (dir == DMA_FROM_DEVICE)
		FUNC3(paddr, paddr + size);
	else
		FUNC2(paddr, paddr + size);
}