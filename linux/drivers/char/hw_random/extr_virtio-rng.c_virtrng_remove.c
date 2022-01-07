
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_device {int dummy; } ;


 int remove_common (struct virtio_device*) ;

__attribute__((used)) static void virtrng_remove(struct virtio_device *vdev)
{
 remove_common(vdev);
}
