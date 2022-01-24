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
struct device {int dummy; } ;
typedef  unsigned long phys_addr_t ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef  unsigned long dma_addr_t ;

/* Variables and functions */
 unsigned long FUNC0 (struct device*,unsigned long,size_t,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct device*,unsigned long,size_t) ; 
 unsigned long FUNC3 (struct page*) ; 

__attribute__((used)) static dma_addr_t FUNC4(struct device *dev, struct page *page,
				unsigned long offset, size_t size,
				enum dma_data_direction dir,
				unsigned long attrs)
{
	unsigned long bus;
	phys_addr_t paddr = FUNC3(page) + offset;

	if (!FUNC2(dev, paddr, size))
		return paddr;

	bus = FUNC0(dev, paddr, size, dir, 0);
	FUNC1();

	return bus;
}