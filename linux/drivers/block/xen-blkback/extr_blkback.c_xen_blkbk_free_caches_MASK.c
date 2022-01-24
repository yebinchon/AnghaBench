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
struct xen_blkif_ring {scalar_t__ persistent_gnt_c; int /*<<< orphan*/  persistent_gnts; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct xen_blkif_ring*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct xen_blkif_ring*,int /*<<< orphan*/ ) ; 

void FUNC4(struct xen_blkif_ring *ring)
{
	/* Free all persistent grant pages */
	if (!FUNC1(&ring->persistent_gnts))
		FUNC2(ring, &ring->persistent_gnts,
			ring->persistent_gnt_c);

	FUNC0(!FUNC1(&ring->persistent_gnts));
	ring->persistent_gnt_c = 0;

	/* Since we are shutting down remove all pages from the buffer */
	FUNC3(ring, 0 /* All */);
}