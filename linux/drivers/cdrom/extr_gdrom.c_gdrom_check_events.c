
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdrom_device_info {int dummy; } ;


 unsigned int DISK_EVENT_MEDIA_CHANGE ;
 int GDROM_ERROR_REG ;
 int __raw_readb (int ) ;

__attribute__((used)) static unsigned int gdrom_check_events(struct cdrom_device_info *cd_info,
           unsigned int clearing, int ignore)
{

 return (__raw_readb(GDROM_ERROR_REG) & 0xF0) == 0x60 ?
  DISK_EVENT_MEDIA_CHANGE : 0;
}
