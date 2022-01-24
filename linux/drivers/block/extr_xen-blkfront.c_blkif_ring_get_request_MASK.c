#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct request {int dummy; } ;
struct TYPE_6__ {unsigned long id; } ;
struct TYPE_7__ {TYPE_2__ rw; } ;
struct blkif_request {TYPE_3__ u; } ;
struct TYPE_8__ {int /*<<< orphan*/  req_prod_pvt; } ;
struct blkfront_ring_info {TYPE_1__* shadow; TYPE_4__ ring; } ;
struct TYPE_5__ {int /*<<< orphan*/  associated_id; int /*<<< orphan*/  status; struct request* request; } ;

/* Variables and functions */
 int /*<<< orphan*/  NO_ASSOCIATED_ID ; 
 int /*<<< orphan*/  REQ_WAITING ; 
 struct blkif_request* FUNC0 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (struct blkfront_ring_info*) ; 

__attribute__((used)) static unsigned long FUNC2(struct blkfront_ring_info *rinfo,
					    struct request *req,
					    struct blkif_request **ring_req)
{
	unsigned long id;

	*ring_req = FUNC0(&rinfo->ring, rinfo->ring.req_prod_pvt);
	rinfo->ring.req_prod_pvt++;

	id = FUNC1(rinfo);
	rinfo->shadow[id].request = req;
	rinfo->shadow[id].status = REQ_WAITING;
	rinfo->shadow[id].associated_id = NO_ASSOCIATED_ID;

	(*ring_req)->u.rw.id = id;

	return id;
}