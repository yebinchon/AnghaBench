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
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_2__ {scalar_t__ cpu_type; } ;

/* Variables and functions */
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__ boot_cpu_data ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,int) ; 
 int FUNC3 (size_t) ; 
 scalar_t__ pcxl ; 
 scalar_t__ pcxl2 ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,size_t) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long,size_t) ; 

void FUNC6(struct device *dev, size_t size, void *vaddr,
		dma_addr_t dma_handle, unsigned long attrs)
{
	int order = FUNC3(size);

	FUNC0(boot_cpu_data.cpu_type != pcxl2 &&
		     boot_cpu_data.cpu_type != pcxl);

	size = 1 << (order + PAGE_SHIFT);
	FUNC5((unsigned long)vaddr, size);
	FUNC4((unsigned long)vaddr, size);

	FUNC2((unsigned long)FUNC1(dma_handle), order);
}