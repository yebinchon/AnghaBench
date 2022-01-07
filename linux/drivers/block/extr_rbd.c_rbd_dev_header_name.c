
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rbd_spec {int image_id; int image_name; } ;
struct rbd_device {int image_format; int header_oid; struct rbd_spec* spec; } ;


 int GFP_KERNEL ;
 int RBD_HEADER_PREFIX ;
 int RBD_SUFFIX ;
 int ceph_oid_aprintf (int *,int ,char*,int ,int ) ;
 int rbd_assert (int ) ;
 int rbd_image_format_valid (int) ;

__attribute__((used)) static int rbd_dev_header_name(struct rbd_device *rbd_dev)
{
 struct rbd_spec *spec = rbd_dev->spec;
 int ret;



 rbd_assert(rbd_image_format_valid(rbd_dev->image_format));
 if (rbd_dev->image_format == 1)
  ret = ceph_oid_aprintf(&rbd_dev->header_oid, GFP_KERNEL, "%s%s",
           spec->image_name, RBD_SUFFIX);
 else
  ret = ceph_oid_aprintf(&rbd_dev->header_oid, GFP_KERNEL, "%s%s",
           RBD_HEADER_PREFIX, spec->image_id);

 return ret;
}
