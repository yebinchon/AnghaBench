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
struct xen_blkif_ring {int /*<<< orphan*/  pending_free_wq; int /*<<< orphan*/  pending_free_lock; int /*<<< orphan*/  pending_free; } ;
struct pending_req {int /*<<< orphan*/  free_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct xen_blkif_ring *ring, struct pending_req *req)
{
	unsigned long flags;
	int was_empty;

	FUNC2(&ring->pending_free_lock, flags);
	was_empty = FUNC1(&ring->pending_free);
	FUNC0(&req->free_list, &ring->pending_free);
	FUNC3(&ring->pending_free_lock, flags);
	if (was_empty)
		FUNC4(&ring->pending_free_wq);
}