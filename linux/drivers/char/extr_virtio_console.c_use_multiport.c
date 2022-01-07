
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ports_device {int vdev; } ;


 int VIRTIO_CONSOLE_F_MULTIPORT ;
 int __virtio_test_bit (int ,int ) ;

__attribute__((used)) static inline bool use_multiport(struct ports_device *portdev)
{




 if (!portdev->vdev)
  return 0;
 return __virtio_test_bit(portdev->vdev, VIRTIO_CONSOLE_F_MULTIPORT);
}
