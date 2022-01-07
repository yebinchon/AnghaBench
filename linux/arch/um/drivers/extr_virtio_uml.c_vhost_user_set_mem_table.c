
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct virtio_uml_device {int dummy; } ;
struct TYPE_5__ {int num; int * regions; } ;
struct TYPE_6__ {TYPE_2__ mem_regions; } ;
struct TYPE_4__ {int size; int request; } ;
struct vhost_user_msg {TYPE_3__ payload; TYPE_1__ header; } ;


 int VHOST_USER_SET_MEM_TABLE ;
 unsigned long __pa (int ) ;
 int end_iomem ;
 scalar_t__ highmem ;
 scalar_t__ physmem_size ;
 unsigned long uml_physmem ;
 unsigned long uml_reserved ;
 int vhost_user_init_mem_region (unsigned long,scalar_t__,int*,int *) ;
 int vhost_user_send (struct virtio_uml_device*,int,struct vhost_user_msg*,int*,int) ;

__attribute__((used)) static int vhost_user_set_mem_table(struct virtio_uml_device *vu_dev)
{
 struct vhost_user_msg msg = {
  .header.request = VHOST_USER_SET_MEM_TABLE,
  .header.size = sizeof(msg.payload.mem_regions),
  .payload.mem_regions.num = 1,
 };
 unsigned long reserved = uml_reserved - uml_physmem;
 int fds[2];
 int rc;
 rc = vhost_user_init_mem_region(reserved, physmem_size - reserved,
     &fds[0],
     &msg.payload.mem_regions.regions[0]);

 if (rc < 0)
  return rc;
 if (highmem) {
  msg.payload.mem_regions.num++;
  rc = vhost_user_init_mem_region(__pa(end_iomem), highmem,
    &fds[1], &msg.payload.mem_regions.regions[1]);
  if (rc < 0)
   return rc;
 }

 return vhost_user_send(vu_dev, 0, &msg, fds,
          msg.payload.mem_regions.num);
}
