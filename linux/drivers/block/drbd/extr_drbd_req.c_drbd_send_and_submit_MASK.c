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
struct drbd_resource {int /*<<< orphan*/  req_lock; } ;
struct TYPE_5__ {int size; scalar_t__ sector; } ;
struct drbd_request {TYPE_2__ i; int /*<<< orphan*/  req_pending_local; int /*<<< orphan*/  pre_submit_jif; int /*<<< orphan*/ * private_bio; int /*<<< orphan*/  req_pending_master_completion; int /*<<< orphan*/  tl_requests; int /*<<< orphan*/  epoch; int /*<<< orphan*/  rq_state; int /*<<< orphan*/  master_bio; } ;
struct drbd_plug_cb {int dummy; } ;
struct drbd_device {int /*<<< orphan*/ * pending_completion; int /*<<< orphan*/ * pending_master_completion; struct drbd_resource* resource; } ;
struct bio_and_error {scalar_t__ bio; int /*<<< orphan*/ * member_0; } ;
struct TYPE_6__ {TYPE_1__* connection; } ;
struct TYPE_4__ {int /*<<< orphan*/  transfer_log; int /*<<< orphan*/  current_tle_writes; int /*<<< orphan*/  current_tle_nr; } ;

/* Variables and functions */
 int /*<<< orphan*/  QUEUE_FOR_NET_READ ; 
 int /*<<< orphan*/  RQ_POSTPONED ; 
 int /*<<< orphan*/  TO_BE_SENT ; 
 int /*<<< orphan*/  TO_BE_SUBMITTED ; 
 int const WRITE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct drbd_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct drbd_request*) ; 
 int /*<<< orphan*/  FUNC6 (struct drbd_device*,struct bio_and_error*) ; 
 int /*<<< orphan*/  FUNC7 (struct drbd_request*) ; 
 struct drbd_plug_cb* FUNC8 (struct drbd_resource*) ; 
 int /*<<< orphan*/  FUNC9 (struct drbd_device*,char*,unsigned long long,int) ; 
 int /*<<< orphan*/  FUNC10 (struct drbd_request*) ; 
 int /*<<< orphan*/  drbd_ratelimit_state ; 
 int /*<<< orphan*/  FUNC11 (struct drbd_request*,struct bio_and_error*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct drbd_request*) ; 
 scalar_t__ FUNC13 (struct drbd_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct drbd_plug_cb*,struct drbd_request*) ; 
 TYPE_3__* FUNC15 (struct drbd_device*) ; 
 int /*<<< orphan*/  jiffies ; 
 scalar_t__ FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (struct drbd_device*) ; 
 int /*<<< orphan*/  FUNC20 (struct drbd_device*) ; 
 int /*<<< orphan*/  FUNC21 (struct drbd_device*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC24(struct drbd_device *device, struct drbd_request *req)
{
	struct drbd_resource *resource = device->resource;
	const int rw = FUNC3(req->master_bio);
	struct bio_and_error m = { NULL, };
	bool no_remote = false;
	bool submit_private_bio = false;

	FUNC22(&resource->req_lock);
	if (rw == WRITE) {
		/* This may temporarily give up the req_lock,
		 * but will re-aquire it before it returns here.
		 * Needs to be before the check on drbd_suspended() */
		FUNC5(req);
		/* no more giving up req_lock from now on! */

		/* check for congestion, and potentially stop sending
		 * full data updates, but start sending "dirty bits" only. */
		FUNC20(device);
	}


	if (FUNC13(device)) {
		/* push back and retry: */
		req->rq_state |= RQ_POSTPONED;
		if (req->private_bio) {
			FUNC4(req->private_bio);
			req->private_bio = NULL;
			FUNC21(device);
		}
		goto out;
	}

	/* We fail READ early, if we can not serve it.
	 * We must do this before req is registered on any lists.
	 * Otherwise, drbd_req_complete() will queue failed READ for retry. */
	if (rw != WRITE) {
		if (!FUNC7(req) && !req->private_bio)
			goto nodata;
	}

	/* which transfer log epoch does this belong to? */
	req->epoch = FUNC2(&FUNC15(device)->connection->current_tle_nr);

	/* no point in adding empty flushes to the transfer log,
	 * they are mapped to drbd barriers already. */
	if (FUNC16(req->i.size!=0)) {
		if (rw == WRITE)
			FUNC15(device)->connection->current_tle_writes++;

		FUNC17(&req->tl_requests, &FUNC15(device)->connection->transfer_log);
	}

	if (rw == WRITE) {
		if (req->private_bio && !FUNC19(device)) {
			FUNC4(req->private_bio);
			req->private_bio = NULL;
			FUNC21(device);
			goto nodata;
		}
		if (!FUNC10(req))
			no_remote = true;
	} else {
		/* We either have a private_bio, or we can read from remote.
		 * Otherwise we had done the goto nodata above. */
		if (req->private_bio == NULL) {
			FUNC1(req, TO_BE_SENT);
			FUNC1(req, QUEUE_FOR_NET_READ);
		} else
			no_remote = true;
	}

	if (no_remote == false) {
		struct drbd_plug_cb *plug = FUNC8(resource);
		if (plug)
			FUNC14(plug, req);
	}

	/* If it took the fast path in drbd_request_prepare, add it here.
	 * The slow path has added it already. */
	if (FUNC18(&req->req_pending_master_completion))
		FUNC17(&req->req_pending_master_completion,
			&device->pending_master_completion[rw == WRITE]);
	if (req->private_bio) {
		/* needs to be marked within the same spinlock */
		req->pre_submit_jif = jiffies;
		FUNC17(&req->req_pending_local,
			&device->pending_completion[rw == WRITE]);
		FUNC1(req, TO_BE_SUBMITTED);
		/* but we need to give up the spinlock to submit */
		submit_private_bio = true;
	} else if (no_remote) {
nodata:
		if (FUNC0(&drbd_ratelimit_state))
			FUNC9(device, "IO ERROR: neither local nor remote data, sector %llu+%u\n",
					(unsigned long long)req->i.sector, req->i.size >> 9);
		/* A write may have been queued for send_oos, however.
		 * So we can not simply free it, we must go through drbd_req_put_completion_ref() */
	}

out:
	FUNC11(req, &m, 1);
	FUNC23(&resource->req_lock);

	/* Even though above is a kref_put(), this is safe.
	 * As long as we still need to submit our private bio,
	 * we hold a completion ref, and the request cannot disappear.
	 * If however this request did not even have a private bio to submit
	 * (e.g. remote read), req may already be invalid now.
	 * That's why we cannot check on req->private_bio. */
	if (submit_private_bio)
		FUNC12(req);
	if (m.bio)
		FUNC6(device, &m);
}