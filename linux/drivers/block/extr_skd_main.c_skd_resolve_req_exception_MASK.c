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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_4__ {int /*<<< orphan*/  status; } ;
struct skd_request_context {int /*<<< orphan*/  status; int /*<<< orphan*/  retries; int /*<<< orphan*/  err_info; TYPE_2__ completion; } ;
struct skd_device {int /*<<< orphan*/  timer_countdown; int /*<<< orphan*/  state; TYPE_1__* pdev; } ;
struct request {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_STS_IOERR ; 
 int /*<<< orphan*/  BLK_STS_OK ; 
#define  SKD_CHECK_STATUS_BUSY_IMMINENT 132 
#define  SKD_CHECK_STATUS_REPORT_ERROR 131 
#define  SKD_CHECK_STATUS_REPORT_GOOD 130 
#define  SKD_CHECK_STATUS_REPORT_SMART_ALERT 129 
#define  SKD_CHECK_STATUS_REQUEUE_REQUEST 128 
 int /*<<< orphan*/  SKD_DRVR_STATE_BUSY_IMMINENT ; 
 int /*<<< orphan*/  SKD_MAX_RETRIES ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct request*) ; 
 int /*<<< orphan*/  FUNC2 (struct request*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int FUNC4 (struct skd_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct skd_device*,struct skd_request_context*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct skd_device*) ; 

__attribute__((used)) static void FUNC7(struct skd_device *skdev,
				      struct skd_request_context *skreq,
				      struct request *req)
{
	u8 cmp_status = skreq->completion.status;

	switch (FUNC4(skdev, cmp_status, &skreq->err_info)) {
	case SKD_CHECK_STATUS_REPORT_GOOD:
	case SKD_CHECK_STATUS_REPORT_SMART_ALERT:
		skreq->status = BLK_STS_OK;
		FUNC1(req);
		break;

	case SKD_CHECK_STATUS_BUSY_IMMINENT:
		FUNC5(skdev, skreq, "retry(busy)");
		FUNC2(req, true);
		FUNC3(&skdev->pdev->dev, "drive BUSY imminent\n");
		skdev->state = SKD_DRVR_STATE_BUSY_IMMINENT;
		skdev->timer_countdown = FUNC0(20);
		FUNC6(skdev);
		break;

	case SKD_CHECK_STATUS_REQUEUE_REQUEST:
		if (++skreq->retries < SKD_MAX_RETRIES) {
			FUNC5(skdev, skreq, "retry");
			FUNC2(req, true);
			break;
		}
		/* fall through */

	case SKD_CHECK_STATUS_REPORT_ERROR:
	default:
		skreq->status = BLK_STS_IOERR;
		FUNC1(req);
		break;
	}
}