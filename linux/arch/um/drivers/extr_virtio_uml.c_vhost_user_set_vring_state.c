
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct virtio_uml_device {int dummy; } ;
struct TYPE_5__ {int num; int index; } ;
struct TYPE_6__ {TYPE_2__ vring_state; } ;
struct TYPE_4__ {int size; int request; } ;
struct vhost_user_msg {TYPE_3__ payload; TYPE_1__ header; } ;


 int vhost_user_send (struct virtio_uml_device*,int,struct vhost_user_msg*,int *,int ) ;

__attribute__((used)) static int vhost_user_set_vring_state(struct virtio_uml_device *vu_dev,
          u32 request, u32 index, u32 num)
{
 struct vhost_user_msg msg = {
  .header.request = request,
  .header.size = sizeof(msg.payload.vring_state),
  .payload.vring_state.index = index,
  .payload.vring_state.num = num,
 };

 return vhost_user_send(vu_dev, 0, &msg, ((void*)0), 0);
}
