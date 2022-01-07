
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdrom_device_info {int mmc3_profile; } ;



__attribute__((used)) static int cdrom_is_dvd_rw(struct cdrom_device_info *cdi)
{
 switch (cdi->mmc3_profile) {
 case 0x12:
 case 0x1A:
 case 0x43:
  return 0;
 default:
  return 1;
 }
}
