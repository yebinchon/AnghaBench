
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct virtio_uml_device {int dummy; } ;


 int VHOST_USER_SET_VRING_NUM ;
 int vhost_user_set_vring_state (struct virtio_uml_device*,int ,int ,int ) ;

__attribute__((used)) static int vhost_user_set_vring_num(struct virtio_uml_device *vu_dev,
        u32 index, u32 num)
{
 return vhost_user_set_vring_state(vu_dev, VHOST_USER_SET_VRING_NUM,
       index, num);
}
