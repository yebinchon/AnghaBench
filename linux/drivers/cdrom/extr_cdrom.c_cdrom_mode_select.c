
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packet_command {int* cmd; int* buffer; int buflen; int data_direction; } ;
struct cdrom_device_ops {int (* generic_packet ) (struct cdrom_device_info*,struct packet_command*) ;} ;
struct cdrom_device_info {struct cdrom_device_ops* ops; } ;


 int CGC_DATA_WRITE ;
 int GPCMD_MODE_SELECT_10 ;
 int memset (int*,int ,int) ;
 int stub1 (struct cdrom_device_info*,struct packet_command*) ;

int cdrom_mode_select(struct cdrom_device_info *cdi,
        struct packet_command *cgc)
{
 const struct cdrom_device_ops *cdo = cdi->ops;

 memset(cgc->cmd, 0, sizeof(cgc->cmd));
 memset(cgc->buffer, 0, 2);
 cgc->cmd[0] = GPCMD_MODE_SELECT_10;
 cgc->cmd[1] = 0x10;
 cgc->cmd[7] = cgc->buflen >> 8;
 cgc->cmd[8] = cgc->buflen & 0xff;
 cgc->data_direction = CGC_DATA_WRITE;
 return cdo->generic_packet(cdi, cgc);
}
