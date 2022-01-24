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
struct drbd_request {int /*<<< orphan*/  device; int /*<<< orphan*/  tl_requests; } ;
struct TYPE_2__ {int /*<<< orphan*/  worker; int /*<<< orphan*/  wq; int /*<<< orphan*/  lock; int /*<<< orphan*/  writes; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__ retry ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC5(struct drbd_request *req)
{
	unsigned long flags;
	FUNC3(&retry.lock, flags);
	FUNC1(&req->tl_requests, &retry.writes);
	FUNC4(&retry.lock, flags);

	/* Drop the extra reference that would otherwise
	 * have been dropped by complete_master_bio.
	 * do_retry() needs to grab a new one. */
	FUNC0(req->device);

	FUNC2(retry.wq, &retry.worker);
}