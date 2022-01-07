
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct rbd_device {int header_oloc; int header_oid; TYPE_1__* rbd_client; } ;
struct TYPE_6__ {int name; int cookie; } ;
struct TYPE_5__ {int addr; } ;
struct ceph_locker {TYPE_3__ id; TYPE_2__ info; } ;
struct ceph_client {int osdc; int monc; } ;
struct TYPE_4__ {struct ceph_client* client; } ;


 int EBUSY ;
 int ENOENT ;
 int ENTITY_NAME (int ) ;
 int RBD_LOCK_NAME ;
 int ceph_cls_break_lock (int *,int *,int *,int ,int ,int *) ;
 int ceph_free_lockers (struct ceph_locker*,scalar_t__) ;
 int ceph_monc_blacklist_add (int *,int *) ;
 int find_watcher (struct rbd_device*,struct ceph_locker*) ;
 int get_lock_owner_info (struct rbd_device*,struct ceph_locker**,scalar_t__*) ;
 int rbd_lock (struct rbd_device*) ;
 int rbd_warn (struct rbd_device*,char*,int ,...) ;

__attribute__((used)) static int rbd_try_lock(struct rbd_device *rbd_dev)
{
 struct ceph_client *client = rbd_dev->rbd_client->client;
 struct ceph_locker *lockers;
 u32 num_lockers;
 int ret;

 for (;;) {
  ret = rbd_lock(rbd_dev);
  if (ret != -EBUSY)
   return ret;


  ret = get_lock_owner_info(rbd_dev, &lockers, &num_lockers);
  if (ret)
   return ret;

  if (num_lockers == 0)
   goto again;

  ret = find_watcher(rbd_dev, lockers);
  if (ret)
   goto out;

  rbd_warn(rbd_dev, "breaking header lock owned by %s%llu",
    ENTITY_NAME(lockers[0].id.name));

  ret = ceph_monc_blacklist_add(&client->monc,
           &lockers[0].info.addr);
  if (ret) {
   rbd_warn(rbd_dev, "blacklist of %s%llu failed: %d",
     ENTITY_NAME(lockers[0].id.name), ret);
   goto out;
  }

  ret = ceph_cls_break_lock(&client->osdc, &rbd_dev->header_oid,
       &rbd_dev->header_oloc, RBD_LOCK_NAME,
       lockers[0].id.cookie,
       &lockers[0].id.name);
  if (ret && ret != -ENOENT)
   goto out;

again:
  ceph_free_lockers(lockers, num_lockers);
 }

out:
 ceph_free_lockers(lockers, num_lockers);
 return ret;
}
