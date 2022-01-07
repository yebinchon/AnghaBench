
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct virtio_uml_device {int features; } ;


 int BIT_ULL (int ) ;
 int VHOST_USER_F_PROTOCOL_FEATURES ;
 int VHOST_USER_SET_VRING_ENABLE ;
 int vhost_user_set_vring_state (struct virtio_uml_device*,int ,int ,int) ;

__attribute__((used)) static int vhost_user_set_vring_enable(struct virtio_uml_device *vu_dev,
           u32 index, bool enable)
{
 if (!(vu_dev->features & BIT_ULL(VHOST_USER_F_PROTOCOL_FEATURES)))
  return 0;

 return vhost_user_set_vring_state(vu_dev, VHOST_USER_SET_VRING_ENABLE,
       index, enable);
}
