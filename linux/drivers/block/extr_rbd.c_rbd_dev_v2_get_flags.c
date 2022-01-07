
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rbd_device {int object_map_flags; int header_oloc; int header_oid; TYPE_1__* spec; } ;
typedef int snapid ;
typedef int flags ;
typedef int __le64 ;
struct TYPE_2__ {int snap_id; } ;


 int EBADMSG ;
 int cpu_to_le64 (int ) ;
 int le64_to_cpu (int ) ;
 int rbd_obj_method_sync (struct rbd_device*,int *,int *,char*,int *,int,int *,int) ;

__attribute__((used)) static int rbd_dev_v2_get_flags(struct rbd_device *rbd_dev)
{
 __le64 snapid = cpu_to_le64(rbd_dev->spec->snap_id);
 __le64 flags;
 int ret;

 ret = rbd_obj_method_sync(rbd_dev, &rbd_dev->header_oid,
      &rbd_dev->header_oloc, "get_flags",
      &snapid, sizeof(snapid),
      &flags, sizeof(flags));
 if (ret < 0)
  return ret;
 if (ret < sizeof(flags))
  return -EBADMSG;

 rbd_dev->object_map_flags = le64_to_cpu(flags);
 return 0;
}
