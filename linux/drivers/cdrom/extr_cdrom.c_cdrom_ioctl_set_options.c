
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdrom_device_info {int options; } ;


 unsigned long CDC_LOCK ;



 int CDROM_CAN (unsigned long) ;
 int CD_DO_IOCTL ;
 int ENOSYS ;
 int cd_dbg (int ,char*) ;

__attribute__((used)) static int cdrom_ioctl_set_options(struct cdrom_device_info *cdi,
  unsigned long arg)
{
 cd_dbg(CD_DO_IOCTL, "entering CDROM_SET_OPTIONS\n");





 switch (arg) {
 case 128:
 case 130:
  break;
 case 129:
  if (!CDROM_CAN(CDC_LOCK))
   return -ENOSYS;
  break;
 case 0:
  return cdi->options;

 default:
  if (!CDROM_CAN(arg))
   return -ENOSYS;
 }
 cdi->options |= (int) arg;
 return cdi->options;
}
