
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct block_device {TYPE_1__* bd_inode; } ;
struct TYPE_2__ {int i_size; } ;



__attribute__((used)) static u64 last_lba(struct block_device *bdev)
{
 if (!bdev || !bdev->bd_inode)
  return 0;
 return (bdev->bd_inode->i_size >> 9) - 1ULL;
}
