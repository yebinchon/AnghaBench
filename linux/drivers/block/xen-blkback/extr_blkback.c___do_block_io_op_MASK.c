#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ req_cons; scalar_t__ rsp_prod_pvt; TYPE_1__* sring; } ;
union blkif_back_rings {TYPE_4__ common; int /*<<< orphan*/  x86_64; int /*<<< orphan*/  x86_32; int /*<<< orphan*/  native; } ;
struct xen_blkif_ring {TYPE_3__* blkif; int /*<<< orphan*/  st_oo_req; union blkif_back_rings blk_rings; } ;
struct pending_req {int dummy; } ;
struct blkif_request {int operation; } ;
typedef  int /*<<< orphan*/  req ;
struct TYPE_7__ {int /*<<< orphan*/  pdevice; } ;
struct TYPE_8__ {int blk_protocol; TYPE_2__ vbd; } ;
struct TYPE_6__ {scalar_t__ req_prod; } ;
typedef  scalar_t__ RING_IDX ;

/* Variables and functions */
#define  BLKIF_OP_DISCARD 136 
#define  BLKIF_OP_FLUSH_DISKCACHE 135 
#define  BLKIF_OP_INDIRECT 134 
#define  BLKIF_OP_READ 133 
#define  BLKIF_OP_WRITE 132 
#define  BLKIF_OP_WRITE_BARRIER 131 
#define  BLKIF_PROTOCOL_NATIVE 130 
#define  BLKIF_PROTOCOL_X86_32 129 
#define  BLKIF_PROTOCOL_X86_64 128 
 int /*<<< orphan*/  FUNC0 () ; 
 int EACCES ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC2 (TYPE_4__*,scalar_t__) ; 
 scalar_t__ FUNC3 (TYPE_4__*,scalar_t__) ; 
 struct pending_req* FUNC4 (struct xen_blkif_ring*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct blkif_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct blkif_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct xen_blkif_ring*,struct blkif_request*) ; 
 int /*<<< orphan*/  FUNC10 (struct xen_blkif_ring*,struct blkif_request*,struct pending_req*) ; 
 int /*<<< orphan*/  FUNC11 (struct xen_blkif_ring*,struct blkif_request*,struct pending_req*) ; 
 int /*<<< orphan*/  FUNC12 (struct xen_blkif_ring*,struct pending_req*) ; 
 scalar_t__ FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (struct blkif_request*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (char*,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 () ; 

__attribute__((used)) static int
FUNC17(struct xen_blkif_ring *ring)
{
	union blkif_back_rings *blk_rings = &ring->blk_rings;
	struct blkif_request req;
	struct pending_req *pending_req;
	RING_IDX rc, rp;
	int more_to_do = 0;

	rc = blk_rings->common.req_cons;
	rp = blk_rings->common.sring->req_prod;
	FUNC16(); /* Ensure we see queued requests up to 'rp'. */

	if (FUNC3(&blk_rings->common, rp)) {
		rc = blk_rings->common.rsp_prod_pvt;
		FUNC15("Frontend provided bogus ring requests (%d - %d = %d). Halting ring processing on dev=%04x\n",
			rp, rc, rp - rc, ring->blkif->vbd.pdevice);
		return -EACCES;
	}
	while (rc != rp) {

		if (FUNC2(&blk_rings->common, rc))
			break;

		if (FUNC13()) {
			more_to_do = 1;
			break;
		}

		pending_req = FUNC4(ring);
		if (NULL == pending_req) {
			ring->st_oo_req++;
			more_to_do = 1;
			break;
		}

		switch (ring->blkif->blk_protocol) {
		case BLKIF_PROTOCOL_NATIVE:
			FUNC14(&req, FUNC1(&blk_rings->native, rc), sizeof(req));
			break;
		case BLKIF_PROTOCOL_X86_32:
			FUNC6(&req, FUNC1(&blk_rings->x86_32, rc));
			break;
		case BLKIF_PROTOCOL_X86_64:
			FUNC7(&req, FUNC1(&blk_rings->x86_64, rc));
			break;
		default:
			FUNC0();
		}
		blk_rings->common.req_cons = ++rc; /* before make_response() */

		/* Apply all sanity checks to /private copy/ of request. */
		FUNC5();

		switch (req.operation) {
		case BLKIF_OP_READ:
		case BLKIF_OP_WRITE:
		case BLKIF_OP_WRITE_BARRIER:
		case BLKIF_OP_FLUSH_DISKCACHE:
		case BLKIF_OP_INDIRECT:
			if (FUNC11(ring, &req, pending_req))
				goto done;
			break;
		case BLKIF_OP_DISCARD:
			FUNC12(ring, pending_req);
			if (FUNC9(ring, &req))
				goto done;
			break;
		default:
			if (FUNC10(ring, &req, pending_req))
				goto done;
			break;
		}

		/* Yield point for this unbounded loop. */
		FUNC8();
	}
done:
	return more_to_do;
}