
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_uml_device {scalar_t__ status; } ;
struct virtio_device {int dummy; } ;


 struct virtio_uml_device* to_virtio_uml_device (struct virtio_device*) ;

__attribute__((used)) static void vu_reset(struct virtio_device *vdev)
{
 struct virtio_uml_device *vu_dev = to_virtio_uml_device(vdev);

 vu_dev->status = 0;
}
