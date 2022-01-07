
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rbd_spec {int * pool_ns; int pool_id; } ;
struct TYPE_6__ {int * parent; int * type; int * bus; } ;
struct TYPE_5__ {int pool_ns; int pool; } ;
struct TYPE_4__ {int data_pool_id; } ;
struct rbd_device {struct rbd_spec* spec; struct rbd_client* rbd_client; TYPE_3__ dev; int object_map_lock; int releasing_wait; int acquire_wait; int running_list; int acquiring_list; int lock_lists_lock; int unlock_work; int lock_dwork; int released_lock_work; int acquired_lock_work; int lock_state; int lock_rwsem; int watch_dwork; int watch_state; int watch_mutex; TYPE_2__ header_oloc; int header_oid; TYPE_1__ header; int header_rwsem; int node; int lock; } ;
struct rbd_client {int dummy; } ;


 int CEPH_NOPOOL ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int RBD_LOCK_STATE_UNLOCKED ;
 int RBD_WATCH_STATE_UNREGISTERED ;
 int WARN_ON (int) ;
 int ceph_find_or_create_string (int *,int ) ;
 int ceph_oid_init (int *) ;
 int device_initialize (TYPE_3__*) ;
 int init_completion (int *) ;
 int init_rwsem (int *) ;
 struct rbd_device* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int rbd_acquire_lock ;
 int rbd_bus_type ;
 int rbd_device_type ;
 int rbd_notify_acquired_lock ;
 int rbd_notify_released_lock ;
 int rbd_release_lock_work ;
 int rbd_reregister_watch ;
 int rbd_root_dev ;
 int spin_lock_init (int *) ;
 int strlen (int *) ;

__attribute__((used)) static struct rbd_device *__rbd_dev_create(struct rbd_client *rbdc,
        struct rbd_spec *spec)
{
 struct rbd_device *rbd_dev;

 rbd_dev = kzalloc(sizeof(*rbd_dev), GFP_KERNEL);
 if (!rbd_dev)
  return ((void*)0);

 spin_lock_init(&rbd_dev->lock);
 INIT_LIST_HEAD(&rbd_dev->node);
 init_rwsem(&rbd_dev->header_rwsem);

 rbd_dev->header.data_pool_id = CEPH_NOPOOL;
 ceph_oid_init(&rbd_dev->header_oid);
 rbd_dev->header_oloc.pool = spec->pool_id;
 if (spec->pool_ns) {
  WARN_ON(!*spec->pool_ns);
  rbd_dev->header_oloc.pool_ns =
      ceph_find_or_create_string(spec->pool_ns,
            strlen(spec->pool_ns));
 }

 mutex_init(&rbd_dev->watch_mutex);
 rbd_dev->watch_state = RBD_WATCH_STATE_UNREGISTERED;
 INIT_DELAYED_WORK(&rbd_dev->watch_dwork, rbd_reregister_watch);

 init_rwsem(&rbd_dev->lock_rwsem);
 rbd_dev->lock_state = RBD_LOCK_STATE_UNLOCKED;
 INIT_WORK(&rbd_dev->acquired_lock_work, rbd_notify_acquired_lock);
 INIT_WORK(&rbd_dev->released_lock_work, rbd_notify_released_lock);
 INIT_DELAYED_WORK(&rbd_dev->lock_dwork, rbd_acquire_lock);
 INIT_WORK(&rbd_dev->unlock_work, rbd_release_lock_work);
 spin_lock_init(&rbd_dev->lock_lists_lock);
 INIT_LIST_HEAD(&rbd_dev->acquiring_list);
 INIT_LIST_HEAD(&rbd_dev->running_list);
 init_completion(&rbd_dev->acquire_wait);
 init_completion(&rbd_dev->releasing_wait);

 spin_lock_init(&rbd_dev->object_map_lock);

 rbd_dev->dev.bus = &rbd_bus_type;
 rbd_dev->dev.type = &rbd_device_type;
 rbd_dev->dev.parent = &rbd_root_dev;
 device_initialize(&rbd_dev->dev);

 rbd_dev->rbd_client = rbdc;
 rbd_dev->spec = spec;

 return rbd_dev;
}
