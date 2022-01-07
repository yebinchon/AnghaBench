
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdrom_device_info {int dummy; } ;


 int cdrom_flush_cache (struct cdrom_device_info*) ;

__attribute__((used)) static int cdrom_close_write(struct cdrom_device_info *cdi)
{



 return 0;

}
