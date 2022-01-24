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
struct skd_request_context {scalar_t__ state; scalar_t__ n_sg; int /*<<< orphan*/  status; } ;
struct skd_device {int dummy; } ;
struct request {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_STS_IOERR ; 
 scalar_t__ SKD_REQ_STATE_BUSY ; 
 scalar_t__ SKD_REQ_STATE_IDLE ; 
 int /*<<< orphan*/  FUNC0 (struct request*) ; 
 struct skd_request_context* FUNC1 (struct request*) ; 
 int /*<<< orphan*/  FUNC2 (struct skd_device* const,struct skd_request_context*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct skd_device* const,struct skd_request_context*) ; 

__attribute__((used)) static bool FUNC4(struct request *req, void *data, bool reserved)
{
	struct skd_device *const skdev = data;
	struct skd_request_context *skreq = FUNC1(req);

	if (skreq->state != SKD_REQ_STATE_BUSY)
		return true;

	FUNC2(skdev, skreq, "recover");

	/* Release DMA resources for the request. */
	if (skreq->n_sg > 0)
		FUNC3(skdev, skreq);

	skreq->state = SKD_REQ_STATE_IDLE;
	skreq->status = BLK_STS_IOERR;
	FUNC0(req);
	return true;
}