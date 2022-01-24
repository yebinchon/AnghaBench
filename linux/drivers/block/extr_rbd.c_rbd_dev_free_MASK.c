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
struct rbd_device {scalar_t__ watch_state; scalar_t__ lock_state; struct rbd_device* opts; int /*<<< orphan*/  spec; int /*<<< orphan*/  rbd_client; struct rbd_device* config_info; int /*<<< orphan*/  header_oloc; int /*<<< orphan*/  header_oid; } ;

/* Variables and functions */
 scalar_t__ RBD_LOCK_STATE_UNLOCKED ; 
 scalar_t__ RBD_WATCH_STATE_UNREGISTERED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct rbd_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct rbd_device *rbd_dev)
{
	FUNC0(rbd_dev->watch_state != RBD_WATCH_STATE_UNREGISTERED);
	FUNC0(rbd_dev->lock_state != RBD_LOCK_STATE_UNLOCKED);

	FUNC1(&rbd_dev->header_oid);
	FUNC2(&rbd_dev->header_oloc);
	FUNC3(rbd_dev->config_info);

	FUNC4(rbd_dev->rbd_client);
	FUNC5(rbd_dev->spec);
	FUNC3(rbd_dev->opts);
	FUNC3(rbd_dev);
}