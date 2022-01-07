
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rbd_image_header {int object_prefix; int snap_names; int snap_sizes; int snapc; } ;
struct rbd_device {struct rbd_image_header header; } ;


 int ceph_put_snap_context (int ) ;
 int kfree (int ) ;
 int memset (struct rbd_image_header*,int ,int) ;
 int rbd_dev_mapping_clear (struct rbd_device*) ;
 int rbd_dev_parent_put (struct rbd_device*) ;
 int rbd_object_map_free (struct rbd_device*) ;

__attribute__((used)) static void rbd_dev_unprobe(struct rbd_device *rbd_dev)
{
 struct rbd_image_header *header;

 rbd_dev_parent_put(rbd_dev);
 rbd_object_map_free(rbd_dev);
 rbd_dev_mapping_clear(rbd_dev);



 header = &rbd_dev->header;
 ceph_put_snap_context(header->snapc);
 kfree(header->snap_sizes);
 kfree(header->snap_names);
 kfree(header->object_prefix);
 memset(header, 0, sizeof (*header));
}
