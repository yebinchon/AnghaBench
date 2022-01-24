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
struct xen_blkif {int /*<<< orphan*/  drain; int /*<<< orphan*/  drain_complete; } ;

/* Variables and functions */
 int /*<<< orphan*/  HZ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct xen_blkif_ring *ring)
{
	struct xen_blkif *blkif = ring->blkif;

	FUNC1(&blkif->drain, 1);
	do {
		if (FUNC0(&ring->inflight) == 0)
			break;
		FUNC3(
				&blkif->drain_complete, HZ);

		if (!FUNC0(&blkif->drain))
			break;
	} while (!FUNC2());
	FUNC1(&blkif->drain, 0);
}