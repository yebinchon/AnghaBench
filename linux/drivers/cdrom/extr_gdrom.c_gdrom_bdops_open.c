
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct block_device {int dummy; } ;
typedef int fmode_t ;
struct TYPE_2__ {int cd_info; } ;


 int cdrom_open (int ,struct block_device*,int ) ;
 int check_disk_change (struct block_device*) ;
 TYPE_1__ gd ;
 int gdrom_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int gdrom_bdops_open(struct block_device *bdev, fmode_t mode)
{
 int ret;

 check_disk_change(bdev);

 mutex_lock(&gdrom_mutex);
 ret = cdrom_open(gd.cd_info, bdev, mode);
 mutex_unlock(&gdrom_mutex);
 return ret;
}
