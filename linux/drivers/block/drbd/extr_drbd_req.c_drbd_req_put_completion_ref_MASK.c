#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct drbd_request {int rq_state; int /*<<< orphan*/  kref; int /*<<< orphan*/  completion_ref; struct drbd_device* device; } ;
struct drbd_device {int dummy; } ;
struct bio_and_error {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drbd_device*,int /*<<< orphan*/ ) ; 
 int RQ_LOCAL_ABORTED ; 
 int RQ_POSTPONED ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct drbd_request*,struct bio_and_error*) ; 
 int /*<<< orphan*/  drbd_req_destroy ; 
 int /*<<< orphan*/  FUNC3 (struct drbd_request*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct drbd_request *req, struct bio_and_error *m, int put)
{
	struct drbd_device *device = req->device;
	FUNC0(device, m || (req->rq_state & RQ_POSTPONED));

	if (!put)
		return;

	if (!FUNC1(put, &req->completion_ref))
		return;

	FUNC2(req, m);

	/* local completion may still come in later,
	 * we need to keep the req object around. */
	if (req->rq_state & RQ_LOCAL_ABORTED)
		return;

	if (req->rq_state & RQ_POSTPONED) {
		/* don't destroy the req object just yet,
		 * but queue it for retry */
		FUNC3(req);
		return;
	}

	FUNC4(&req->kref, drbd_req_destroy);
}