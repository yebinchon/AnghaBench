
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdrom_device_info {int handle; } ;


 int pcd_reset (int ) ;

__attribute__((used)) static int pcd_drive_reset(struct cdrom_device_info *cdi)
{
 return pcd_reset(cdi->handle);
}
