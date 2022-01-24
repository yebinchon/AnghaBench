#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct xen_blkif_ring {int /*<<< orphan*/ * xenblkd; int /*<<< orphan*/  irq; } ;
struct TYPE_9__ {TYPE_2__* bdev; } ;
struct xen_blkif {int nr_rings; struct xen_blkif_ring* rings; TYPE_6__* be; TYPE_3__ vbd; } ;
struct TYPE_11__ {TYPE_4__* dev; } ;
struct TYPE_10__ {scalar_t__ state; } ;
struct TYPE_8__ {TYPE_1__* bd_inode; } ;
struct TYPE_7__ {int /*<<< orphan*/  i_mapping; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int TASK_COMM_LEN ; 
 scalar_t__ XenbusStateConnected ; 
 int FUNC2 (struct xen_blkif*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,struct xen_blkif_ring*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xen_blkif_schedule ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,int,char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,int,char*,char*,int) ; 

__attribute__((used)) static void FUNC10(struct xen_blkif *blkif)
{
	int err;
	char name[TASK_COMM_LEN];
	struct xen_blkif_ring *ring;
	int i;

	/* Not ready to connect? */
	if (!blkif->rings || !blkif->rings[0].irq || !blkif->vbd.bdev)
		return;

	/* Already connected? */
	if (blkif->be->dev->state == XenbusStateConnected)
		return;

	/* Attempt to connect: exit if we fail to. */
	FUNC3(blkif->be);
	if (blkif->be->dev->state != XenbusStateConnected)
		return;

	err = FUNC2(blkif, name);
	if (err) {
		FUNC8(blkif->be->dev, err, "get blkback dev name");
		return;
	}

	err = FUNC4(blkif->vbd.bdev->bd_inode->i_mapping);
	if (err) {
		FUNC8(blkif->be->dev, err, "block flush");
		return;
	}
	FUNC5(blkif->vbd.bdev->bd_inode->i_mapping);

	for (i = 0; i < blkif->nr_rings; i++) {
		ring = &blkif->rings[i];
		ring->xenblkd = FUNC6(xen_blkif_schedule, ring, "%s-%d", name, i);
		if (FUNC0(ring->xenblkd)) {
			err = FUNC1(ring->xenblkd);
			ring->xenblkd = NULL;
			FUNC9(blkif->be->dev, err,
					"start %s-%d xenblkd", name, i);
			goto out;
		}
	}
	return;

out:
	while (--i >= 0) {
		ring = &blkif->rings[i];
		FUNC7(ring->xenblkd);
	}
	return;
}