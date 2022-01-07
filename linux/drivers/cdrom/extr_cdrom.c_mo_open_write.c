
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packet_command {int quiet; int buflen; } ;
struct cdrom_device_info {int dummy; } ;


 int CGC_DATA_READ ;
 int GPMODE_ALL_PAGES ;
 int GPMODE_VENDOR_PAGE ;
 int cdrom_mode_sense (struct cdrom_device_info*,struct packet_command*,int ,int ) ;
 int init_cdrom_command (struct packet_command*,char**,int,int ) ;

__attribute__((used)) static int mo_open_write(struct cdrom_device_info *cdi)
{
 struct packet_command cgc;
 char buffer[255];
 int ret;

 init_cdrom_command(&cgc, &buffer, 4, CGC_DATA_READ);
 cgc.quiet = 1;






 ret = cdrom_mode_sense(cdi, &cgc, GPMODE_ALL_PAGES, 0);
 if (ret)
  ret = cdrom_mode_sense(cdi, &cgc, GPMODE_VENDOR_PAGE, 0);
 if (ret) {
  cgc.buflen = 255;
  ret = cdrom_mode_sense(cdi, &cgc, GPMODE_ALL_PAGES, 0);
 }


 if (ret)
  return 0;

 return buffer[3] & 0x80;
}
