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
struct TYPE_5__ {int /*<<< orphan*/  list; } ;
struct TYPE_6__ {int local; int waiting; int /*<<< orphan*/  size; int /*<<< orphan*/  sector; } ;
struct drbd_request {int rq_state; int /*<<< orphan*/  kref; int /*<<< orphan*/  completion_ref; int /*<<< orphan*/  req_pending_local; int /*<<< orphan*/  req_pending_master_completion; TYPE_2__ w; int /*<<< orphan*/  tl_requests; TYPE_3__ i; scalar_t__ epoch; struct bio* master_bio; struct drbd_device* device; } ;
struct drbd_device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  bi_size; int /*<<< orphan*/  bi_sector; } ;
struct bio {TYPE_1__ bi_iter; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ REQ_OP_DISCARD ; 
 scalar_t__ REQ_OP_WRITE_SAME ; 
 scalar_t__ REQ_OP_WRITE_ZEROES ; 
 int RQ_UNMAP ; 
 int RQ_WRITE ; 
 int RQ_WSAME ; 
 int RQ_ZEROES ; 
 scalar_t__ WRITE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (struct bio*) ; 
 scalar_t__ FUNC3 (struct bio*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (struct drbd_request*,struct bio*) ; 
 int /*<<< orphan*/  drbd_request_mempool ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct drbd_request* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct drbd_request*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct drbd_request *FUNC9(struct drbd_device *device, struct bio *bio_src)
{
	struct drbd_request *req;

	req = FUNC7(&drbd_request_mempool, GFP_NOIO);
	if (!req)
		return NULL;
	FUNC8(req, 0, sizeof(*req));

	FUNC5(req, bio_src);
	req->rq_state = (FUNC2(bio_src) == WRITE ? RQ_WRITE : 0)
		      | (FUNC3(bio_src) == REQ_OP_WRITE_SAME ? RQ_WSAME : 0)
		      | (FUNC3(bio_src) == REQ_OP_WRITE_ZEROES ? RQ_ZEROES : 0)
		      | (FUNC3(bio_src) == REQ_OP_DISCARD ? RQ_UNMAP : 0);
	req->device = device;
	req->master_bio = bio_src;
	req->epoch = 0;

	FUNC4(&req->i);
	req->i.sector     = bio_src->bi_iter.bi_sector;
	req->i.size      = bio_src->bi_iter.bi_size;
	req->i.local = true;
	req->i.waiting = false;

	FUNC0(&req->tl_requests);
	FUNC0(&req->w.list);
	FUNC0(&req->req_pending_master_completion);
	FUNC0(&req->req_pending_local);

	/* one reference to be put by __drbd_make_request */
	FUNC1(&req->completion_ref, 1);
	/* one kref as long as completion_ref > 0 */
	FUNC6(&req->kref);
	return req;
}