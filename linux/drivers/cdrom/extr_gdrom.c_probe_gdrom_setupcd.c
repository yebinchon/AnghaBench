
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* cd_info; } ;
struct TYPE_3__ {int capacity; int mask; int name; int * ops; } ;


 int CDC_CLOSE_TRAY ;
 int CDC_LOCK ;
 int CDC_OPEN_TRAY ;
 int CDC_SELECT_DISC ;
 int GDROM_DEV_NAME ;
 TYPE_2__ gd ;
 int gdrom_ops ;
 int strcpy (int ,int ) ;

__attribute__((used)) static void probe_gdrom_setupcd(void)
{
 gd.cd_info->ops = &gdrom_ops;
 gd.cd_info->capacity = 1;
 strcpy(gd.cd_info->name, GDROM_DEV_NAME);
 gd.cd_info->mask = CDC_CLOSE_TRAY|CDC_OPEN_TRAY|CDC_LOCK|
  CDC_SELECT_DISC;
}
