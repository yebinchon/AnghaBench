
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct block_device {TYPE_1__* bd_part; int bd_disk; } ;
struct TYPE_2__ {int partno; } ;


 char const* disk_name (int ,int ,char*) ;

const char *bdevname(struct block_device *bdev, char *buf)
{
 return disk_name(bdev->bd_disk, bdev->bd_part->partno, buf);
}
