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
struct device {int dummy; } ;
typedef  scalar_t__ phys_addr_t ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  PG_arch_1 ; 
 unsigned long FUNC0 (scalar_t__) ; 
 TYPE_1__* FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC3(struct device *dev, phys_addr_t paddr,
		size_t size, enum dma_data_direction dir)
{
	unsigned long pfn = FUNC0(paddr);

	do {
		FUNC2(PG_arch_1, &FUNC1(pfn)->flags);
	} while (++pfn <= FUNC0(paddr + size - 1));
}