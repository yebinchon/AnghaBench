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
struct xen_blkif_ring {int /*<<< orphan*/  inflight; struct xen_blkif* blkif; } ;
struct xen_blkif {int /*<<< orphan*/  drain_complete; int /*<<< orphan*/  drain; } ;
struct pending_req {int /*<<< orphan*/  status; int /*<<< orphan*/  operation; int /*<<< orphan*/  id; struct xen_blkif_ring* ring; } ;
struct gntab_unmap_queue_data {int /*<<< orphan*/  count; int /*<<< orphan*/  pages; scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct xen_blkif_ring*,struct pending_req*) ; 
 int /*<<< orphan*/  FUNC5 (struct xen_blkif_ring*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct xen_blkif_ring*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct xen_blkif*) ; 

__attribute__((used)) static void FUNC8(int result, struct gntab_unmap_queue_data *data)
{
	struct pending_req *pending_req = (struct pending_req *)(data->data);
	struct xen_blkif_ring *ring = pending_req->ring;
	struct xen_blkif *blkif = ring->blkif;

	/* BUG_ON used to reproduce existing behaviour,
	   but is this the best way to deal with this? */
	FUNC0(result);

	FUNC6(ring, data->pages, data->count);
	FUNC5(ring, pending_req->id,
		      pending_req->operation, pending_req->status);
	FUNC4(ring, pending_req);
	/*
	 * Make sure the request is freed before releasing blkif,
	 * or there could be a race between free_req and the
	 * cleanup done in xen_blkif_free during shutdown.
	 *
	 * NB: The fact that we might try to wake up pending_free_wq
	 * before drain_complete (in case there's a drain going on)
	 * it's not a problem with our current implementation
	 * because we can assure there's no thread waiting on
	 * pending_free_wq if there's a drain going on, but it has
	 * to be taken into account if the current model is changed.
	 */
	if (FUNC1(&ring->inflight) && FUNC2(&blkif->drain)) {
		FUNC3(&blkif->drain_complete);
	}
	FUNC7(blkif);
}