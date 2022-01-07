
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nbd_device {TYPE_1__* config; } ;
struct block_device {int dummy; } ;
struct TYPE_2__ {int runtime_flags; } ;


 int NBD_RT_HAS_CONFIG_REF ;
 int __invalidate_device (struct block_device*,int) ;
 int nbd_bdev_reset (struct block_device*) ;
 int nbd_config_put (struct nbd_device*) ;
 int sock_shutdown (struct nbd_device*) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

__attribute__((used)) static void nbd_clear_sock_ioctl(struct nbd_device *nbd,
     struct block_device *bdev)
{
 sock_shutdown(nbd);
 __invalidate_device(bdev, 1);
 nbd_bdev_reset(bdev);
 if (test_and_clear_bit(NBD_RT_HAS_CONFIG_REF,
          &nbd->config->runtime_flags))
  nbd_config_put(nbd);
}
