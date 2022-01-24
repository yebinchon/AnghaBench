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
typedef  int u32 ;

/* Variables and functions */
 int PAGE_SHIFT ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int dma_base ; 
 int /*<<< orphan*/  dma_bitmap ; 
 int /*<<< orphan*/  dma_lock ; 
 int /*<<< orphan*/  dma_pages ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static inline u32 FUNC3(int order)
{
	unsigned long flags;
	u32 pos;

	FUNC1(&dma_lock, flags);
	pos = FUNC0(dma_bitmap, dma_pages, order);
	FUNC2(&dma_lock, flags);

	return dma_base + (pos << PAGE_SHIFT);
}