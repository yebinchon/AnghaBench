
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gendisk {int dummy; } ;
struct TYPE_2__ {int cd_info; } ;


 unsigned int cdrom_check_events (int ,unsigned int) ;
 TYPE_1__ gd ;

__attribute__((used)) static unsigned int gdrom_bdops_check_events(struct gendisk *disk,
          unsigned int clearing)
{
 return cdrom_check_events(gd.cd_info, clearing);
}
