
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_uml_device {int dummy; } ;


 int VHOST_USER_SET_VRING_CALL ;
 int vhost_user_set_vring_fd (struct virtio_uml_device*,int ,int,int) ;

__attribute__((used)) static int vhost_user_set_vring_call(struct virtio_uml_device *vu_dev,
         int index, int fd)
{
 return vhost_user_set_vring_fd(vu_dev, VHOST_USER_SET_VRING_CALL,
           index, fd);
}
