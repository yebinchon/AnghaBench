
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct virtio_uml_device {int status; } ;
struct virtio_device {int dummy; } ;


 struct virtio_uml_device* to_virtio_uml_device (struct virtio_device*) ;

__attribute__((used)) static u8 vu_get_status(struct virtio_device *vdev)
{
 struct virtio_uml_device *vu_dev = to_virtio_uml_device(vdev);

 return vu_dev->status;
}
