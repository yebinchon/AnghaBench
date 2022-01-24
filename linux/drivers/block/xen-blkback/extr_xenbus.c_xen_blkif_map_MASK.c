#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * sring; } ;
struct TYPE_6__ {TYPE_2__ common; int /*<<< orphan*/  x86_64; int /*<<< orphan*/  x86_32; int /*<<< orphan*/  native; } ;
struct xen_blkif_ring {int irq; TYPE_3__ blk_rings; scalar_t__ blk_ring; struct xen_blkif* blkif; } ;
struct xen_blkif {int blk_protocol; TYPE_1__* be; int /*<<< orphan*/  domid; } ;
struct blkif_x86_64_sring {int dummy; } ;
typedef  struct blkif_x86_64_sring blkif_x86_32_sring ;
typedef  struct blkif_x86_64_sring blkif_sring ;
typedef  int /*<<< orphan*/  grant_ref_t ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct blkif_x86_64_sring*,unsigned int) ; 
#define  BLKIF_PROTOCOL_NATIVE 130 
#define  BLKIF_PROTOCOL_X86_32 129 
#define  BLKIF_PROTOCOL_X86_64 128 
 int /*<<< orphan*/  FUNC1 () ; 
 unsigned int XEN_PAGE_SIZE ; 
 int FUNC2 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct xen_blkif_ring*) ; 
 int /*<<< orphan*/  xen_blkif_be_int ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct xen_blkif_ring *ring, grant_ref_t *gref,
			 unsigned int nr_grefs, unsigned int evtchn)
{
	int err;
	struct xen_blkif *blkif = ring->blkif;

	/* Already connected through? */
	if (ring->irq)
		return 0;

	err = FUNC3(blkif->be->dev, gref, nr_grefs,
				     &ring->blk_ring);
	if (err < 0)
		return err;

	switch (blkif->blk_protocol) {
	case BLKIF_PROTOCOL_NATIVE:
	{
		struct blkif_sring *sring;
		sring = (struct blkif_sring *)ring->blk_ring;
		FUNC0(&ring->blk_rings.native, sring,
			       XEN_PAGE_SIZE * nr_grefs);
		break;
	}
	case BLKIF_PROTOCOL_X86_32:
	{
		struct blkif_x86_32_sring *sring_x86_32;
		sring_x86_32 = (struct blkif_x86_32_sring *)ring->blk_ring;
		FUNC0(&ring->blk_rings.x86_32, sring_x86_32,
			       XEN_PAGE_SIZE * nr_grefs);
		break;
	}
	case BLKIF_PROTOCOL_X86_64:
	{
		struct blkif_x86_64_sring *sring_x86_64;
		sring_x86_64 = (struct blkif_x86_64_sring *)ring->blk_ring;
		FUNC0(&ring->blk_rings.x86_64, sring_x86_64,
			       XEN_PAGE_SIZE * nr_grefs);
		break;
	}
	default:
		FUNC1();
	}

	err = FUNC2(blkif->domid, evtchn,
						    xen_blkif_be_int, 0,
						    "blkif-backend", ring);
	if (err < 0) {
		FUNC4(blkif->be->dev, ring->blk_ring);
		ring->blk_rings.common.sring = NULL;
		return err;
	}
	ring->irq = err;

	return 0;
}