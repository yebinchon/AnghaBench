
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_6__ {scalar_t__ size; } ;
struct TYPE_5__ {scalar_t__ image_size; } ;
struct rbd_device {TYPE_3__ mapping; int header_rwsem; TYPE_2__ header; TYPE_1__* spec; scalar_t__ parent; } ;
struct TYPE_4__ {scalar_t__ snap_id; } ;


 scalar_t__ CEPH_NOSNAP ;
 int down_write (int *) ;
 int rbd_dev_header_info (struct rbd_device*) ;
 int rbd_dev_update_size (struct rbd_device*) ;
 int rbd_dev_v2_parent_info (struct rbd_device*) ;
 int rbd_exists_validate (struct rbd_device*) ;
 int up_write (int *) ;

__attribute__((used)) static int rbd_dev_refresh(struct rbd_device *rbd_dev)
{
 u64 mapping_size;
 int ret;

 down_write(&rbd_dev->header_rwsem);
 mapping_size = rbd_dev->mapping.size;

 ret = rbd_dev_header_info(rbd_dev);
 if (ret)
  goto out;





 if (rbd_dev->parent) {
  ret = rbd_dev_v2_parent_info(rbd_dev);
  if (ret)
   goto out;
 }

 if (rbd_dev->spec->snap_id == CEPH_NOSNAP) {
  rbd_dev->mapping.size = rbd_dev->header.image_size;
 } else {

  rbd_exists_validate(rbd_dev);
 }

out:
 up_write(&rbd_dev->header_rwsem);
 if (!ret && mapping_size != rbd_dev->mapping.size)
  rbd_dev_update_size(rbd_dev);

 return ret;
}
