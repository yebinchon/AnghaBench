
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdrom_device_info {int handle; } ;


 int pcd_atapi (int ,char*,int ,int ,char*) ;
 int pcd_scratch ;

__attribute__((used)) static int pcd_tray_move(struct cdrom_device_info *cdi, int position)
{
 char ej_cmd[12] = { 0x1b, 0, 0, 0, 3 - position, 0, 0, 0, 0, 0, 0, 0 };

 return pcd_atapi(cdi->handle, ej_cmd, 0, pcd_scratch,
    position ? "eject" : "close tray");
}
