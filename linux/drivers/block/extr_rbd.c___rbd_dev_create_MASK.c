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
struct rbd_spec {int /*<<< orphan*/ * pool_ns; int /*<<< orphan*/  pool_id; } ;
struct TYPE_6__ {int /*<<< orphan*/ * parent; int /*<<< orphan*/ * type; int /*<<< orphan*/ * bus; } ;
struct TYPE_5__ {int /*<<< orphan*/  pool_ns; int /*<<< orphan*/  pool; } ;
struct TYPE_4__ {int /*<<< orphan*/  data_pool_id; } ;
struct rbd_device {struct rbd_spec* spec; struct rbd_client* rbd_client; TYPE_3__ dev; int /*<<< orphan*/  object_map_lock; int /*<<< orphan*/  releasing_wait; int /*<<< orphan*/  acquire_wait; int /*<<< orphan*/  running_list; int /*<<< orphan*/  acquiring_list; int /*<<< orphan*/  lock_lists_lock; int /*<<< orphan*/  unlock_work; int /*<<< orphan*/  lock_dwork; int /*<<< orphan*/  released_lock_work; int /*<<< orphan*/  acquired_lock_work; int /*<<< orphan*/  lock_state; int /*<<< orphan*/  lock_rwsem; int /*<<< orphan*/  watch_dwork; int /*<<< orphan*/  watch_state; int /*<<< orphan*/  watch_mutex; TYPE_2__ header_oloc; int /*<<< orphan*/  header_oid; TYPE_1__ header; int /*<<< orphan*/  header_rwsem; int /*<<< orphan*/  node; int /*<<< orphan*/  lock; } ;
struct rbd_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CEPH_NOPOOL ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RBD_LOCK_STATE_UNLOCKED ; 
 int /*<<< orphan*/  RBD_WATCH_STATE_UNREGISTERED ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct rbd_device* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rbd_acquire_lock ; 
 int /*<<< orphan*/  rbd_bus_type ; 
 int /*<<< orphan*/  rbd_device_type ; 
 int /*<<< orphan*/  rbd_notify_acquired_lock ; 
 int /*<<< orphan*/  rbd_notify_released_lock ; 
 int /*<<< orphan*/  rbd_release_lock_work ; 
 int /*<<< orphan*/  rbd_reregister_watch ; 
 int /*<<< orphan*/  rbd_root_dev ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct rbd_device *FUNC13(struct rbd_client *rbdc,
					   struct rbd_spec *spec)
{
	struct rbd_device *rbd_dev;

	rbd_dev = FUNC9(sizeof(*rbd_dev), GFP_KERNEL);
	if (!rbd_dev)
		return NULL;

	FUNC11(&rbd_dev->lock);
	FUNC1(&rbd_dev->node);
	FUNC8(&rbd_dev->header_rwsem);

	rbd_dev->header.data_pool_id = CEPH_NOPOOL;
	FUNC5(&rbd_dev->header_oid);
	rbd_dev->header_oloc.pool = spec->pool_id;
	if (spec->pool_ns) {
		FUNC3(!*spec->pool_ns);
		rbd_dev->header_oloc.pool_ns =
		    FUNC4(spec->pool_ns,
					       FUNC12(spec->pool_ns));
	}

	FUNC10(&rbd_dev->watch_mutex);
	rbd_dev->watch_state = RBD_WATCH_STATE_UNREGISTERED;
	FUNC0(&rbd_dev->watch_dwork, rbd_reregister_watch);

	FUNC8(&rbd_dev->lock_rwsem);
	rbd_dev->lock_state = RBD_LOCK_STATE_UNLOCKED;
	FUNC2(&rbd_dev->acquired_lock_work, rbd_notify_acquired_lock);
	FUNC2(&rbd_dev->released_lock_work, rbd_notify_released_lock);
	FUNC0(&rbd_dev->lock_dwork, rbd_acquire_lock);
	FUNC2(&rbd_dev->unlock_work, rbd_release_lock_work);
	FUNC11(&rbd_dev->lock_lists_lock);
	FUNC1(&rbd_dev->acquiring_list);
	FUNC1(&rbd_dev->running_list);
	FUNC7(&rbd_dev->acquire_wait);
	FUNC7(&rbd_dev->releasing_wait);

	FUNC11(&rbd_dev->object_map_lock);

	rbd_dev->dev.bus = &rbd_bus_type;
	rbd_dev->dev.type = &rbd_device_type;
	rbd_dev->dev.parent = &rbd_root_dev;
	FUNC6(&rbd_dev->dev);

	rbd_dev->rbd_client = rbdc;
	rbd_dev->spec = spec;

	return rbd_dev;
}