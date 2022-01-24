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
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef  int dma_addr_t ;

/* Variables and functions */
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct page*,unsigned int,size_t,int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,int) ; 
 struct page* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct device *dev,
		dma_addr_t handle, size_t size, enum dma_data_direction dir)
{
	unsigned int offset = handle & (PAGE_SIZE - 1);
	struct page *page = FUNC2(FUNC1(dev, handle-offset));
	FUNC0(page, offset, size, dir);
}