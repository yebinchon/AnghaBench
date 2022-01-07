
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct virtio_uml_device {int dummy; } ;
struct TYPE_4__ {int integer; } ;
struct TYPE_3__ {int size; int request; } ;
struct vhost_user_msg {TYPE_2__ payload; TYPE_1__ header; } ;


 int EINVAL ;
 int VHOST_USER_VRING_INDEX_MASK ;
 int VHOST_USER_VRING_POLL_MASK ;
 int vhost_user_send (struct virtio_uml_device*,int,struct vhost_user_msg*,int*,int) ;

__attribute__((used)) static int vhost_user_set_vring_fd(struct virtio_uml_device *vu_dev,
       u32 request, int index, int fd)
{
 struct vhost_user_msg msg = {
  .header.request = request,
  .header.size = sizeof(msg.payload.integer),
  .payload.integer = index,
 };

 if (index & ~VHOST_USER_VRING_INDEX_MASK)
  return -EINVAL;
 if (fd < 0) {
  msg.payload.integer |= VHOST_USER_VRING_POLL_MASK;
  return vhost_user_send(vu_dev, 0, &msg, ((void*)0), 0);
 }
 return vhost_user_send(vu_dev, 0, &msg, &fd, 1);
}
