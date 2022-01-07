
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gendisk {int dummy; } ;
typedef int fmode_t ;
struct TYPE_2__ {int cd_info; } ;


 int cdrom_release (int ,int ) ;
 TYPE_1__ gd ;
 int gdrom_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void gdrom_bdops_release(struct gendisk *disk, fmode_t mode)
{
 mutex_lock(&gdrom_mutex);
 cdrom_release(gd.cd_info, mode);
 mutex_unlock(&gdrom_mutex);
}
