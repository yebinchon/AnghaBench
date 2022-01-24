#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ size; } ;
struct drbd_request {unsigned long start_jif; int /*<<< orphan*/  in_actlog_jif; int /*<<< orphan*/  rq_state; TYPE_1__ i; int /*<<< orphan*/ * private_bio; } ;
struct drbd_device {int /*<<< orphan*/  ap_actlog_cnt; int /*<<< orphan*/  flags; } ;
struct bio {int /*<<< orphan*/  bi_status; } ;

/* Variables and functions */
 int /*<<< orphan*/  AL_SUSPENDED ; 
 int /*<<< orphan*/  BLK_STS_RESOURCE ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct drbd_request* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ REQ_OP_DISCARD ; 
 scalar_t__ REQ_OP_WRITE_ZEROES ; 
 int /*<<< orphan*/  RQ_IN_ACT_LOG ; 
 int const WRITE ; 
 int /*<<< orphan*/  FUNC1 (struct drbd_device*,struct drbd_request*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct bio*) ; 
 int /*<<< orphan*/  FUNC4 (struct bio*) ; 
 scalar_t__ FUNC5 (struct bio*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct drbd_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct drbd_device*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (struct drbd_device*,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct drbd_device*,struct drbd_request*) ; 
 struct drbd_request* FUNC11 (struct drbd_device*,struct bio*) ; 
 int /*<<< orphan*/  FUNC12 (struct drbd_device*) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct drbd_request *
FUNC14(struct drbd_device *device, struct bio *bio, unsigned long start_jif)
{
	const int rw = FUNC3(bio);
	struct drbd_request *req;

	/* allocate outside of all locks; */
	req = FUNC11(device, bio);
	if (!req) {
		FUNC7(device);
		/* only pass the error to the upper layers.
		 * if user cannot handle io errors, that's not our business. */
		FUNC9(device, "could not kmalloc() req\n");
		bio->bi_status = BLK_STS_RESOURCE;
		FUNC4(bio);
		return FUNC0(-ENOMEM);
	}
	req->start_jif = start_jif;

	if (!FUNC12(device)) {
		FUNC6(req->private_bio);
		req->private_bio = NULL;
	}

	/* Update disk stats */
	FUNC1(device, req);

	/* process discards always from our submitter thread */
	if (FUNC5(bio) == REQ_OP_WRITE_ZEROES ||
	    FUNC5(bio) == REQ_OP_DISCARD)
		goto queue_for_submitter_thread;

	if (rw == WRITE && req->private_bio && req->i.size
	&& !FUNC13(AL_SUSPENDED, &device->flags)) {
		if (!FUNC8(device, &req->i))
			goto queue_for_submitter_thread;
		req->rq_state |= RQ_IN_ACT_LOG;
		req->in_actlog_jif = jiffies;
	}
	return req;

 queue_for_submitter_thread:
	FUNC2(&device->ap_actlog_cnt);
	FUNC10(device, req);
	return NULL;
}