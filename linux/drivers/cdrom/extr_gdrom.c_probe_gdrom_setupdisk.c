
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* disk; } ;
struct TYPE_3__ {int first_minor; int minors; int disk_name; int major; } ;


 int GDROM_DEV_NAME ;
 TYPE_2__ gd ;
 int gdrom_major ;
 int strcpy (int ,int ) ;

__attribute__((used)) static void probe_gdrom_setupdisk(void)
{
 gd.disk->major = gdrom_major;
 gd.disk->first_minor = 1;
 gd.disk->minors = 1;
 strcpy(gd.disk->disk_name, GDROM_DEV_NAME);
}
