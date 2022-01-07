
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct packet_command {int* cmd; int timeout; int quiet; } ;
struct cdrom_device_info {int mmc3_profile; scalar_t__ media_written; TYPE_1__* ops; int name; } ;
struct TYPE_2__ {int (* generic_packet ) (struct cdrom_device_info*,struct packet_command*) ;} ;


 int CD_CLOSE ;
 int CGC_DATA_NONE ;
 void* GPCMD_CLOSE_TRACK ;
 int GPCMD_FLUSH_CACHE ;
 int HZ ;
 int cd_dbg (int ,char*,int ) ;
 int init_cdrom_command (struct packet_command*,int *,int ,int ) ;
 int pr_info (char*,int ) ;
 int stub1 (struct cdrom_device_info*,struct packet_command*) ;
 int stub2 (struct cdrom_device_info*,struct packet_command*) ;
 int stub3 (struct cdrom_device_info*,struct packet_command*) ;

__attribute__((used)) static void cdrom_dvd_rw_close_write(struct cdrom_device_info *cdi)
{
 struct packet_command cgc;

 if (cdi->mmc3_profile != 0x1a) {
  cd_dbg(CD_CLOSE, "%s: No DVD+RW\n", cdi->name);
  return;
 }

 if (!cdi->media_written) {
  cd_dbg(CD_CLOSE, "%s: DVD+RW media clean\n", cdi->name);
  return;
 }

 pr_info("%s: dirty DVD+RW media, \"finalizing\"\n", cdi->name);

 init_cdrom_command(&cgc, ((void*)0), 0, CGC_DATA_NONE);
 cgc.cmd[0] = GPCMD_FLUSH_CACHE;
 cgc.timeout = 30*HZ;
 cdi->ops->generic_packet(cdi, &cgc);

 init_cdrom_command(&cgc, ((void*)0), 0, CGC_DATA_NONE);
 cgc.cmd[0] = GPCMD_CLOSE_TRACK;
 cgc.timeout = 3000*HZ;
 cgc.quiet = 1;
 cdi->ops->generic_packet(cdi, &cgc);

 init_cdrom_command(&cgc, ((void*)0), 0, CGC_DATA_NONE);
 cgc.cmd[0] = GPCMD_CLOSE_TRACK;
 cgc.cmd[2] = 2;
 cgc.quiet = 1;
 cgc.timeout = 3000*HZ;
 cdi->ops->generic_packet(cdi, &cgc);

 cdi->media_written = 0;
}
