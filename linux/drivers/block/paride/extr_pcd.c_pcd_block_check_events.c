
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcd_unit {int info; } ;
struct gendisk {struct pcd_unit* private_data; } ;


 unsigned int cdrom_check_events (int *,unsigned int) ;

__attribute__((used)) static unsigned int pcd_block_check_events(struct gendisk *disk,
        unsigned int clearing)
{
 struct pcd_unit *cd = disk->private_data;
 return cdrom_check_events(&cd->info, clearing);
}
