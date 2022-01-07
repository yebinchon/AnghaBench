
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_uml_device {int dummy; } ;


 int VHOST_USER_SET_OWNER ;
 int vhost_user_send_no_payload (struct virtio_uml_device*,int,int ) ;

__attribute__((used)) static int vhost_user_set_owner(struct virtio_uml_device *vu_dev)
{
 return vhost_user_send_no_payload(vu_dev, 0, VHOST_USER_SET_OWNER);
}
