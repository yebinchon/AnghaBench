
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct virtio_uml_device {int dummy; } ;


 int VHOST_USER_SET_FEATURES ;
 int vhost_user_send_u64 (struct virtio_uml_device*,int ,int ) ;

__attribute__((used)) static int vhost_user_set_features(struct virtio_uml_device *vu_dev,
       u64 features)
{
 return vhost_user_send_u64(vu_dev, VHOST_USER_SET_FEATURES, features);
}
