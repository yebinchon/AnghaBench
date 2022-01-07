
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdrom_device_info {int dummy; } ;


 int CAP_SYS_ADMIN ;
 int CD_DO_IOCTL ;
 int EACCES ;
 int capable (int ) ;
 int cd_dbg (int ,char*,char*) ;
 int debug ;

__attribute__((used)) static int cdrom_ioctl_debug(struct cdrom_device_info *cdi,
  unsigned long arg)
{
 cd_dbg(CD_DO_IOCTL, "%sabling debug\n", arg ? "En" : "Dis");

 if (!capable(CAP_SYS_ADMIN))
  return -EACCES;
 debug = arg ? 1 : 0;
 return debug;
}
