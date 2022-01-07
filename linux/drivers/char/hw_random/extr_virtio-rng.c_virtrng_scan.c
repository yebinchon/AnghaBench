
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtrng_info {int hwrng_register_done; int hwrng; } ;
struct virtio_device {struct virtrng_info* priv; } ;


 int hwrng_register (int *) ;

__attribute__((used)) static void virtrng_scan(struct virtio_device *vdev)
{
 struct virtrng_info *vi = vdev->priv;
 int err;

 err = hwrng_register(&vi->hwrng);
 if (!err)
  vi->hwrng_register_done = 1;
}
