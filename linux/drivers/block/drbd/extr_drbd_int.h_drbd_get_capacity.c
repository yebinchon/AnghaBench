
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct block_device {int bd_inode; } ;
typedef int sector_t ;


 int i_size_read (int ) ;

__attribute__((used)) static inline sector_t drbd_get_capacity(struct block_device *bdev)
{

 return bdev ? i_size_read(bdev->bd_inode) >> 9 : 0;
}
