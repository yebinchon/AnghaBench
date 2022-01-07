
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rbd_spec {char* pool_id; char* pool_name; scalar_t__ pool_ns; int snap_name; int snap_id; scalar_t__ image_name; int image_id; } ;
struct rbd_device {int parent_overlap; struct rbd_spec* parent_spec; struct rbd_device* parent; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 struct rbd_device* dev_to_rbd_dev (struct device*) ;
 size_t sprintf (char*,char*,...) ;

__attribute__((used)) static ssize_t rbd_parent_show(struct device *dev,
          struct device_attribute *attr,
          char *buf)
{
 struct rbd_device *rbd_dev = dev_to_rbd_dev(dev);
 ssize_t count = 0;

 if (!rbd_dev->parent)
  return sprintf(buf, "(no parent image)\n");

 for ( ; rbd_dev->parent; rbd_dev = rbd_dev->parent) {
  struct rbd_spec *spec = rbd_dev->parent_spec;

  count += sprintf(&buf[count], "%s"
       "pool_id %llu\npool_name %s\n"
       "pool_ns %s\n"
       "image_id %s\nimage_name %s\n"
       "snap_id %llu\nsnap_name %s\n"
       "overlap %llu\n",
       !count ? "" : "\n",
       spec->pool_id, spec->pool_name,
       spec->pool_ns ?: "",
       spec->image_id, spec->image_name ?: "(unknown)",
       spec->snap_id, spec->snap_name,
       rbd_dev->parent_overlap);
 }

 return count;
}
