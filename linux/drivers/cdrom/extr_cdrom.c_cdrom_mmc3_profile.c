
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct packet_command {int* cmd; int quiet; } ;
struct cdrom_device_info {int mmc3_profile; TYPE_1__* ops; } ;
typedef int buffer ;
struct TYPE_2__ {int (* generic_packet ) (struct cdrom_device_info*,struct packet_command*) ;} ;


 int CGC_DATA_READ ;
 int GPCMD_GET_CONFIGURATION ;
 int init_cdrom_command (struct packet_command*,char*,int,int ) ;
 int stub1 (struct cdrom_device_info*,struct packet_command*) ;

__attribute__((used)) static void cdrom_mmc3_profile(struct cdrom_device_info *cdi)
{
 struct packet_command cgc;
 char buffer[32];
 int ret, mmc3_profile;

 init_cdrom_command(&cgc, buffer, sizeof(buffer), CGC_DATA_READ);

 cgc.cmd[0] = GPCMD_GET_CONFIGURATION;
 cgc.cmd[1] = 0;
 cgc.cmd[2] = cgc.cmd[3] = 0;
 cgc.cmd[8] = sizeof(buffer);
 cgc.quiet = 1;

 if ((ret = cdi->ops->generic_packet(cdi, &cgc)))
  mmc3_profile = 0xffff;
 else
  mmc3_profile = (buffer[6] << 8) | buffer[7];

 cdi->mmc3_profile = mmc3_profile;
}
