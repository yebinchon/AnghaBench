
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcd_unit {int info; } ;
struct gendisk {struct pcd_unit* private_data; } ;
typedef int fmode_t ;


 int cdrom_release (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pcd_mutex ;

__attribute__((used)) static void pcd_block_release(struct gendisk *disk, fmode_t mode)
{
 struct pcd_unit *cd = disk->private_data;
 mutex_lock(&pcd_mutex);
 cdrom_release(&cd->info, mode);
 mutex_unlock(&pcd_mutex);
}
