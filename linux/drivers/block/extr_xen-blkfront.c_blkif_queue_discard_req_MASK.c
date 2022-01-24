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
struct request {int dummy; } ;
struct TYPE_4__ {unsigned long id; scalar_t__ flag; scalar_t__ sector_number; int /*<<< orphan*/  nr_sectors; } ;
struct TYPE_5__ {TYPE_1__ discard; } ;
struct blkif_request {TYPE_2__ u; int /*<<< orphan*/  operation; } ;
struct blkfront_ring_info {TYPE_3__* shadow; struct blkfront_info* dev_info; } ;
struct blkfront_info {scalar_t__ feature_secdiscard; } ;
typedef  scalar_t__ blkif_sector_t ;
struct TYPE_6__ {struct blkif_request req; } ;

/* Variables and functions */
 scalar_t__ BLKIF_DISCARD_SECURE ; 
 int /*<<< orphan*/  BLKIF_OP_DISCARD ; 
 scalar_t__ REQ_OP_SECURE_ERASE ; 
 scalar_t__ FUNC0 (struct request*) ; 
 int /*<<< orphan*/  FUNC1 (struct request*) ; 
 unsigned long FUNC2 (struct blkfront_ring_info*,struct request*,struct blkif_request**) ; 
 scalar_t__ FUNC3 (struct request*) ; 

__attribute__((used)) static int FUNC4(struct request *req, struct blkfront_ring_info *rinfo)
{
	struct blkfront_info *info = rinfo->dev_info;
	struct blkif_request *ring_req;
	unsigned long id;

	/* Fill out a communications ring structure. */
	id = FUNC2(rinfo, req, &ring_req);

	ring_req->operation = BLKIF_OP_DISCARD;
	ring_req->u.discard.nr_sectors = FUNC1(req);
	ring_req->u.discard.id = id;
	ring_req->u.discard.sector_number = (blkif_sector_t)FUNC0(req);
	if (FUNC3(req) == REQ_OP_SECURE_ERASE && info->feature_secdiscard)
		ring_req->u.discard.flag = BLKIF_DISCARD_SECURE;
	else
		ring_req->u.discard.flag = 0;

	/* Keep a private copy so we can reissue requests when recovering. */
	rinfo->shadow[id].req = *ring_req;

	return 0;
}