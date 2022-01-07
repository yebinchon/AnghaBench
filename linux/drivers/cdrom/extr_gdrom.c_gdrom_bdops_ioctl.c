
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct block_device {int dummy; } ;
typedef int fmode_t ;
struct TYPE_2__ {int cd_info; } ;


 int cdrom_ioctl (int ,struct block_device*,int ,unsigned int,unsigned long) ;
 TYPE_1__ gd ;
 int gdrom_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int gdrom_bdops_ioctl(struct block_device *bdev, fmode_t mode,
 unsigned cmd, unsigned long arg)
{
 int ret;

 mutex_lock(&gdrom_mutex);
 ret = cdrom_ioctl(gd.cd_info, bdev, mode, cmd, arg);
 mutex_unlock(&gdrom_mutex);

 return ret;
}
