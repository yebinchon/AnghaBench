
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nbd_device {TYPE_1__* config; } ;
struct gendisk {struct nbd_device* private_data; } ;
struct block_device {scalar_t__ bd_openers; } ;
typedef int fmode_t ;
struct TYPE_2__ {int runtime_flags; } ;


 int NBD_RT_DISCONNECT_ON_CLOSE ;
 struct block_device* bdget_disk (struct gendisk*,int ) ;
 int nbd_config_put (struct nbd_device*) ;
 int nbd_disconnect_and_put (struct nbd_device*) ;
 int nbd_put (struct nbd_device*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void nbd_release(struct gendisk *disk, fmode_t mode)
{
 struct nbd_device *nbd = disk->private_data;
 struct block_device *bdev = bdget_disk(disk, 0);

 if (test_bit(NBD_RT_DISCONNECT_ON_CLOSE, &nbd->config->runtime_flags) &&
   bdev->bd_openers == 0)
  nbd_disconnect_and_put(nbd);

 nbd_config_put(nbd);
 nbd_put(nbd);
}
