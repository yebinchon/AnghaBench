
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int data_pool_id; } ;
struct rbd_device {TYPE_1__ header; int header_oloc; int header_oid; } ;
typedef int data_pool_id ;
typedef int __le64 ;


 int CEPH_NOPOOL ;
 int EBADMSG ;
 int WARN_ON (int) ;
 int le64_to_cpu (int ) ;
 int rbd_obj_method_sync (struct rbd_device*,int *,int *,char*,int *,int ,int *,int) ;

__attribute__((used)) static int rbd_dev_v2_data_pool(struct rbd_device *rbd_dev)
{
 __le64 data_pool_id;
 int ret;

 ret = rbd_obj_method_sync(rbd_dev, &rbd_dev->header_oid,
      &rbd_dev->header_oloc, "get_data_pool",
      ((void*)0), 0, &data_pool_id, sizeof(data_pool_id));
 if (ret < 0)
  return ret;
 if (ret < sizeof(data_pool_id))
  return -EBADMSG;

 rbd_dev->header.data_pool_id = le64_to_cpu(data_pool_id);
 WARN_ON(rbd_dev->header.data_pool_id == CEPH_NOPOOL);
 return 0;
}
