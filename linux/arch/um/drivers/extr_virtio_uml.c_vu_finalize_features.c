
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct virtio_uml_device {int features; } ;
struct virtio_device {int features; } ;


 int VHOST_USER_SUPPORTED_F ;
 struct virtio_uml_device* to_virtio_uml_device (struct virtio_device*) ;
 int vhost_user_set_features (struct virtio_uml_device*,int) ;
 int vring_transport_features (struct virtio_device*) ;

__attribute__((used)) static int vu_finalize_features(struct virtio_device *vdev)
{
 struct virtio_uml_device *vu_dev = to_virtio_uml_device(vdev);
 u64 supported = vdev->features & VHOST_USER_SUPPORTED_F;

 vring_transport_features(vdev);
 vu_dev->features = vdev->features | supported;

 return vhost_user_set_features(vu_dev, vu_dev->features);
}
