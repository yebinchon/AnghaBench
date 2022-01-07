
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct virtio_uml_device {int dummy; } ;
struct TYPE_4__ {int integer; } ;
struct TYPE_3__ {int size; int request; } ;
struct vhost_user_msg {TYPE_2__ payload; TYPE_1__ header; } ;


 int vhost_user_send (struct virtio_uml_device*,int,struct vhost_user_msg*,int *,int ) ;

__attribute__((used)) static int vhost_user_send_u64(struct virtio_uml_device *vu_dev,
          u32 request, u64 value)
{
 struct vhost_user_msg msg = {
  .header.request = request,
  .header.size = sizeof(msg.payload.integer),
  .payload.integer = value,
 };

 return vhost_user_send(vu_dev, 0, &msg, ((void*)0), 0);
}
