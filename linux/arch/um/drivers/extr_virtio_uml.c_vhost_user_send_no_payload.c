
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct virtio_uml_device {int dummy; } ;
struct TYPE_2__ {int request; } ;
struct vhost_user_msg {TYPE_1__ header; } ;


 int vhost_user_send (struct virtio_uml_device*,int,struct vhost_user_msg*,int *,int ) ;

__attribute__((used)) static int vhost_user_send_no_payload(struct virtio_uml_device *vu_dev,
          bool need_response, u32 request)
{
 struct vhost_user_msg msg = {
  .header.request = request,
 };

 return vhost_user_send(vu_dev, need_response, &msg, ((void*)0), 0);
}
