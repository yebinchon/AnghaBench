
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcd_unit {int info; } ;
struct block_device {TYPE_1__* bd_disk; } ;
typedef int fmode_t ;
struct TYPE_2__ {struct pcd_unit* private_data; } ;


 int cdrom_open (int *,struct block_device*,int ) ;
 int check_disk_change (struct block_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pcd_mutex ;

__attribute__((used)) static int pcd_block_open(struct block_device *bdev, fmode_t mode)
{
 struct pcd_unit *cd = bdev->bd_disk->private_data;
 int ret;

 check_disk_change(bdev);

 mutex_lock(&pcd_mutex);
 ret = cdrom_open(&cd->info, bdev, mode);
 mutex_unlock(&pcd_mutex);

 return ret;
}
