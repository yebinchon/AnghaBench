#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pending_req {scalar_t__ operation; int /*<<< orphan*/  pendcnt; void* status; TYPE_2__* ring; } ;
typedef  scalar_t__ blk_status_t ;
struct TYPE_4__ {TYPE_1__* blkif; } ;
struct TYPE_3__ {int /*<<< orphan*/  be; } ;

/* Variables and functions */
 scalar_t__ BLKIF_OP_FLUSH_DISKCACHE ; 
 scalar_t__ BLKIF_OP_WRITE_BARRIER ; 
 void* BLKIF_RSP_EOPNOTSUPP ; 
 void* BLKIF_RSP_ERROR ; 
 scalar_t__ BLK_STS_NOTSUPP ; 
 int /*<<< orphan*/  XBT_NIL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pending_req*) ; 

__attribute__((used)) static void FUNC5(struct pending_req *pending_req,
		blk_status_t error)
{
	/* An error fails the entire request. */
	if (pending_req->operation == BLKIF_OP_FLUSH_DISKCACHE &&
	    error == BLK_STS_NOTSUPP) {
		FUNC1("flush diskcache op failed, not supported\n");
		FUNC3(XBT_NIL, pending_req->ring->blkif->be, 0);
		pending_req->status = BLKIF_RSP_EOPNOTSUPP;
	} else if (pending_req->operation == BLKIF_OP_WRITE_BARRIER &&
		   error == BLK_STS_NOTSUPP) {
		FUNC1("write barrier op failed, not supported\n");
		FUNC2(XBT_NIL, pending_req->ring->blkif->be, 0);
		pending_req->status = BLKIF_RSP_EOPNOTSUPP;
	} else if (error) {
		FUNC1("Buffer not up-to-date at end of operation,"
			 " error=%d\n", error);
		pending_req->status = BLKIF_RSP_ERROR;
	}

	/*
	 * If all of the bio's have completed it is time to unmap
	 * the grant references associated with 'request' and provide
	 * the proper response on the ring.
	 */
	if (FUNC0(&pending_req->pendcnt))
		FUNC4(pending_req);
}