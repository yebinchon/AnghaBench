
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_uml_device {int dummy; } ;
struct virtio_device {int dummy; } ;


 struct virtio_uml_device* to_virtio_uml_device (struct virtio_device*) ;
 int vhost_user_get_config (struct virtio_uml_device*,unsigned int,void*,unsigned int) ;

__attribute__((used)) static void vu_get(struct virtio_device *vdev, unsigned offset,
     void *buf, unsigned len)
{
 struct virtio_uml_device *vu_dev = to_virtio_uml_device(vdev);

 vhost_user_get_config(vu_dev, offset, buf, len);
}
