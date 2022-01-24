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
struct rbd_device {scalar_t__ watch_state; TYPE_2__* rbd_client; int /*<<< orphan*/  watch_dwork; int /*<<< orphan*/  watch_mutex; } ;
struct TYPE_4__ {TYPE_1__* client; } ;
struct TYPE_3__ {int /*<<< orphan*/  osdc; } ;

/* Variables and functions */
 scalar_t__ RBD_WATCH_STATE_REGISTERED ; 
 scalar_t__ RBD_WATCH_STATE_UNREGISTERED ; 
 int /*<<< orphan*/  FUNC0 (struct rbd_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct rbd_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct rbd_device *rbd_dev)
{
	FUNC2(rbd_dev);

	FUNC4(&rbd_dev->watch_mutex);
	if (rbd_dev->watch_state == RBD_WATCH_STATE_REGISTERED)
		FUNC0(rbd_dev);
	rbd_dev->watch_state = RBD_WATCH_STATE_UNREGISTERED;
	FUNC5(&rbd_dev->watch_mutex);

	FUNC1(&rbd_dev->watch_dwork);
	FUNC3(&rbd_dev->rbd_client->client->osdc);
}