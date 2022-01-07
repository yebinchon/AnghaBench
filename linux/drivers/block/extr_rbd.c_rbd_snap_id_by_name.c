
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct rbd_device {int image_format; } ;


 int rbd_v1_snap_id_by_name (struct rbd_device*,char const*) ;
 int rbd_v2_snap_id_by_name (struct rbd_device*,char const*) ;

__attribute__((used)) static u64 rbd_snap_id_by_name(struct rbd_device *rbd_dev, const char *name)
{
 if (rbd_dev->image_format == 1)
  return rbd_v1_snap_id_by_name(rbd_dev, name);

 return rbd_v2_snap_id_by_name(rbd_dev, name);
}
