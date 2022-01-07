
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rbd_device {scalar_t__ watch_state; scalar_t__ lock_state; struct rbd_device* opts; int spec; int rbd_client; struct rbd_device* config_info; int header_oloc; int header_oid; } ;


 scalar_t__ RBD_LOCK_STATE_UNLOCKED ;
 scalar_t__ RBD_WATCH_STATE_UNREGISTERED ;
 int WARN_ON (int) ;
 int ceph_oid_destroy (int *) ;
 int ceph_oloc_destroy (int *) ;
 int kfree (struct rbd_device*) ;
 int rbd_put_client (int ) ;
 int rbd_spec_put (int ) ;

__attribute__((used)) static void rbd_dev_free(struct rbd_device *rbd_dev)
{
 WARN_ON(rbd_dev->watch_state != RBD_WATCH_STATE_UNREGISTERED);
 WARN_ON(rbd_dev->lock_state != RBD_LOCK_STATE_UNLOCKED);

 ceph_oid_destroy(&rbd_dev->header_oid);
 ceph_oloc_destroy(&rbd_dev->header_oloc);
 kfree(rbd_dev->config_info);

 rbd_put_client(rbd_dev->rbd_client);
 rbd_spec_put(rbd_dev->spec);
 kfree(rbd_dev->opts);
 kfree(rbd_dev);
}
