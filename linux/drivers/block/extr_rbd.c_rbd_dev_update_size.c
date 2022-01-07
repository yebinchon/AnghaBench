
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ size; } ;
struct rbd_device {int disk; TYPE_1__ mapping; int flags; } ;
typedef int sector_t ;


 int RBD_DEV_FLAG_EXISTS ;
 int RBD_DEV_FLAG_REMOVING ;
 int SECTOR_SIZE ;
 int dout (char*,unsigned long long) ;
 int revalidate_disk (int ) ;
 int set_capacity (int ,int) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void rbd_dev_update_size(struct rbd_device *rbd_dev)
{
 sector_t size;






 if (test_bit(RBD_DEV_FLAG_EXISTS, &rbd_dev->flags) &&
     !test_bit(RBD_DEV_FLAG_REMOVING, &rbd_dev->flags)) {
  size = (sector_t)rbd_dev->mapping.size / SECTOR_SIZE;
  dout("setting size to %llu sectors", (unsigned long long)size);
  set_capacity(rbd_dev->disk, size);
  revalidate_disk(rbd_dev->disk);
 }
}
