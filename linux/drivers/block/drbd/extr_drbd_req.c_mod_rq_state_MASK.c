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
struct TYPE_2__ {int size; scalar_t__ waiting; } ;
struct drbd_request {unsigned int rq_state; int /*<<< orphan*/  kref; TYPE_1__ i; void* net_done_jif; void* acked_jif; int /*<<< orphan*/  req_pending_local; int /*<<< orphan*/  completion_ref; struct drbd_device* device; } ;
struct drbd_peer_device {int dummy; } ;
struct drbd_device {int /*<<< orphan*/  misc_wait; int /*<<< orphan*/  ap_in_flight; } ;
struct bio_and_error {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drbd_device*,unsigned int) ; 
 unsigned int RQ_COMPLETION_SUSP ; 
 unsigned int RQ_EXP_BARR_ACK ; 
 unsigned int RQ_LOCAL_ABORTED ; 
 unsigned int RQ_LOCAL_PENDING ; 
 unsigned int RQ_NET_DONE ; 
 unsigned int RQ_NET_PENDING ; 
 unsigned int RQ_NET_QUEUED ; 
 unsigned int RQ_NET_SENT ; 
 int /*<<< orphan*/  FUNC1 (struct drbd_peer_device*,struct drbd_request*) ; 
 int /*<<< orphan*/  FUNC2 (struct drbd_peer_device*,struct drbd_request*) ; 
 int /*<<< orphan*/  FUNC3 (struct drbd_peer_device*,struct drbd_request*) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct drbd_device*) ; 
 int /*<<< orphan*/  drbd_req_destroy ; 
 int /*<<< orphan*/  FUNC8 (struct drbd_request*,struct bio_and_error*,int) ; 
 scalar_t__ FUNC9 (struct drbd_device*) ; 
 struct drbd_peer_device* FUNC10 (struct drbd_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct drbd_device*) ; 
 void* jiffies ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct drbd_peer_device*,struct drbd_request*) ; 
 int /*<<< orphan*/  FUNC16 (struct drbd_peer_device*,struct drbd_request*) ; 
 int /*<<< orphan*/  FUNC17 (struct drbd_peer_device*,struct drbd_request*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC19(struct drbd_request *req, struct bio_and_error *m,
		int clear, int set)
{
	struct drbd_device *device = req->device;
	struct drbd_peer_device *peer_device = FUNC10(device);
	unsigned s = req->rq_state;
	int c_put = 0;

	if (FUNC9(device) && !((s | clear) & RQ_COMPLETION_SUSP))
		set |= RQ_COMPLETION_SUSP;

	/* apply */

	req->rq_state &= ~clear;
	req->rq_state |= set;

	/* no change? */
	if (req->rq_state == s)
		return;

	/* intent: get references */

	FUNC12(&req->kref);

	if (!(s & RQ_LOCAL_PENDING) && (set & RQ_LOCAL_PENDING))
		FUNC5(&req->completion_ref);

	if (!(s & RQ_NET_PENDING) && (set & RQ_NET_PENDING)) {
		FUNC11(device);
		FUNC5(&req->completion_ref);
	}

	if (!(s & RQ_NET_QUEUED) && (set & RQ_NET_QUEUED)) {
		FUNC5(&req->completion_ref);
		FUNC16(peer_device, req);
	}

	if (!(s & RQ_EXP_BARR_ACK) && (set & RQ_EXP_BARR_ACK))
		FUNC12(&req->kref); /* wait for the DONE */

	if (!(s & RQ_NET_SENT) && (set & RQ_NET_SENT)) {
		/* potentially already completed in the ack_receiver thread */
		if (!(s & RQ_NET_DONE)) {
			FUNC4(req->i.size >> 9, &device->ap_in_flight);
			FUNC17(peer_device, req);
		}
		if (req->rq_state & RQ_NET_PENDING)
			FUNC15(peer_device, req);
	}

	if (!(s & RQ_COMPLETION_SUSP) && (set & RQ_COMPLETION_SUSP))
		FUNC5(&req->completion_ref);

	/* progress: put references */

	if ((s & RQ_COMPLETION_SUSP) && (clear & RQ_COMPLETION_SUSP))
		++c_put;

	if (!(s & RQ_LOCAL_ABORTED) && (set & RQ_LOCAL_ABORTED)) {
		FUNC0(device, req->rq_state & RQ_LOCAL_PENDING);
		++c_put;
	}

	if ((s & RQ_LOCAL_PENDING) && (clear & RQ_LOCAL_PENDING)) {
		if (req->rq_state & RQ_LOCAL_ABORTED)
			FUNC13(&req->kref, drbd_req_destroy);
		else
			++c_put;
		FUNC14(&req->req_pending_local);
	}

	if ((s & RQ_NET_PENDING) && (clear & RQ_NET_PENDING)) {
		FUNC7(device);
		++c_put;
		req->acked_jif = jiffies;
		FUNC1(peer_device, req);
	}

	if ((s & RQ_NET_QUEUED) && (clear & RQ_NET_QUEUED)) {
		++c_put;
		FUNC2(peer_device, req);
	}

	if (!(s & RQ_NET_DONE) && (set & RQ_NET_DONE)) {
		if (s & RQ_NET_SENT)
			FUNC6(req->i.size >> 9, &device->ap_in_flight);
		if (s & RQ_EXP_BARR_ACK)
			FUNC13(&req->kref, drbd_req_destroy);
		req->net_done_jif = jiffies;

		/* in ahead/behind mode, or just in case,
		 * before we finally destroy this request,
		 * the caching pointers must not reference it anymore */
		FUNC2(peer_device, req);
		FUNC1(peer_device, req);
		FUNC3(peer_device, req);
	}

	/* potentially complete and destroy */

	/* If we made progress, retry conflicting peer requests, if any. */
	if (req->i.waiting)
		FUNC18(&device->misc_wait);

	FUNC8(req, m, c_put);
	FUNC13(&req->kref, drbd_req_destroy);
}