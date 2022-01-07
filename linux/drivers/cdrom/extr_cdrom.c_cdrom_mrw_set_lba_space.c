
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packet_command {char* buffer; int buflen; } ;
struct mode_page_header {int mode_data_length; int desc_length; } ;
struct cdrom_device_info {int name; int mrw_mode_page; } ;
typedef int buffer ;


 int CGC_DATA_READ ;
 int be16_to_cpu (int ) ;
 int cdrom_mode_select (struct cdrom_device_info*,struct packet_command*) ;
 int cdrom_mode_sense (struct cdrom_device_info*,struct packet_command*,int ,int ) ;
 int init_cdrom_command (struct packet_command*,char*,int,int ) ;
 int * mrw_address_space ;
 int pr_info (char*,int ,int ) ;

__attribute__((used)) static int cdrom_mrw_set_lba_space(struct cdrom_device_info *cdi, int space)
{
 struct packet_command cgc;
 struct mode_page_header *mph;
 char buffer[16];
 int ret, offset, size;

 init_cdrom_command(&cgc, buffer, sizeof(buffer), CGC_DATA_READ);

 cgc.buffer = buffer;
 cgc.buflen = sizeof(buffer);

 ret = cdrom_mode_sense(cdi, &cgc, cdi->mrw_mode_page, 0);
 if (ret)
  return ret;

 mph = (struct mode_page_header *)buffer;
 offset = be16_to_cpu(mph->desc_length);
 size = be16_to_cpu(mph->mode_data_length) + 2;

 buffer[offset + 3] = space;
 cgc.buflen = size;

 ret = cdrom_mode_select(cdi, &cgc);
 if (ret)
  return ret;

 pr_info("%s: mrw address space %s selected\n",
  cdi->name, mrw_address_space[space]);
 return 0;
}
