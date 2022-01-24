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
struct xen_vbd {scalar_t__ size; scalar_t__ feature_gnt_persistent; } ;
struct xen_blkif_ring {int waiting_reqs; int /*<<< orphan*/ * xenblkd; int /*<<< orphan*/  persistent_purge_work; scalar_t__ st_print; scalar_t__ next_lru; int /*<<< orphan*/  shutdown_wq; int /*<<< orphan*/  pending_free; int /*<<< orphan*/  pending_free_wq; int /*<<< orphan*/  wq; struct xen_blkif* blkif; } ;
struct xen_blkif {struct xen_vbd vbd; } ;

/* Variables and functions */
 int EACCES ; 
 int /*<<< orphan*/  LRU_INTERVAL ; 
 int FUNC0 (struct xen_blkif_ring*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ jiffies ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ log_stats ; 
 unsigned long FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct xen_blkif_ring*) ; 
 int /*<<< orphan*/  FUNC6 (struct xen_blkif_ring*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct xen_blkif_ring*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 scalar_t__ FUNC10 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC11 () ; 
 scalar_t__ FUNC12 (int) ; 
 scalar_t__ FUNC13 (struct xen_vbd*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,scalar_t__) ; 
 unsigned long FUNC15 (int /*<<< orphan*/ ,int,unsigned long) ; 
 int /*<<< orphan*/  xen_blkif_max_buffer_pages ; 
 int /*<<< orphan*/  FUNC16 (struct xen_blkif*) ; 

int FUNC17(void *arg)
{
	struct xen_blkif_ring *ring = arg;
	struct xen_blkif *blkif = ring->blkif;
	struct xen_vbd *vbd = &blkif->vbd;
	unsigned long timeout;
	int ret;

	FUNC7();
	while (!FUNC2()) {
		if (FUNC11())
			continue;
		if (FUNC12(vbd->size != FUNC13(vbd)))
			FUNC16(blkif);

		timeout = FUNC4(LRU_INTERVAL);

		timeout = FUNC15(
			ring->wq,
			ring->waiting_reqs || FUNC2(),
			timeout);
		if (timeout == 0)
			goto purge_gnt_list;
		timeout = FUNC15(
			ring->pending_free_wq,
			!FUNC3(&ring->pending_free) ||
			FUNC2(),
			timeout);
		if (timeout == 0)
			goto purge_gnt_list;

		ring->waiting_reqs = 0;
		FUNC9(); /* clear flag *before* checking for work */

		ret = FUNC0(ring);
		if (ret > 0)
			ring->waiting_reqs = 1;
		if (ret == -EACCES)
			FUNC14(ring->shutdown_wq,
						 FUNC2());

purge_gnt_list:
		if (blkif->vbd.feature_gnt_persistent &&
		    FUNC10(jiffies, ring->next_lru)) {
			FUNC6(ring);
			ring->next_lru = jiffies + FUNC4(LRU_INTERVAL);
		}

		/* Shrink if we have more than xen_blkif_max_buffer_pages */
		FUNC8(ring, xen_blkif_max_buffer_pages);

		if (log_stats && FUNC10(jiffies, ring->st_print))
			FUNC5(ring);
	}

	/* Drain pending purge work */
	FUNC1(&ring->persistent_purge_work);

	if (log_stats)
		FUNC5(ring);

	ring->xenblkd = NULL;

	return 0;
}