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
struct xen_blkif_ring {int free_pages_num; int /*<<< orphan*/  free_pages_lock; int /*<<< orphan*/  free_pages; } ;
struct page {int /*<<< orphan*/  lru; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static inline void FUNC3(struct xen_blkif_ring *ring, struct page **page,
                                  int num)
{
	unsigned long flags;
	int i;

	FUNC1(&ring->free_pages_lock, flags);
	for (i = 0; i < num; i++)
		FUNC0(&page[i]->lru, &ring->free_pages);
	ring->free_pages_num += num;
	FUNC2(&ring->free_pages_lock, flags);
}