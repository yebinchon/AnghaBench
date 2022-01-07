
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdrom_device_info {int dummy; } ;


 int gdrom_preparedisk_cmd () ;

__attribute__((used)) static int gdrom_open(struct cdrom_device_info *cd_info, int purpose)
{

 return gdrom_preparedisk_cmd();
}
