
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct packet_command {int* cmd; int timeout; } ;
struct cdrom_device_info {int sanyo_slot; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* generic_packet ) (struct cdrom_device_info*,struct packet_command*) ;} ;


 int CD_CHANGER ;
 int CGC_DATA_NONE ;
 int GPCMD_LOAD_UNLOAD ;
 int GPCMD_TEST_UNIT_READY ;
 int HZ ;
 int cd_dbg (int ,char*) ;
 int init_cdrom_command (struct packet_command*,int *,int ,int ) ;
 int stub1 (struct cdrom_device_info*,struct packet_command*) ;

__attribute__((used)) static int cdrom_load_unload(struct cdrom_device_info *cdi, int slot)
{
 struct packet_command cgc;

 cd_dbg(CD_CHANGER, "entering cdrom_load_unload()\n");
 if (cdi->sanyo_slot && slot < 0)
  return 0;

 init_cdrom_command(&cgc, ((void*)0), 0, CGC_DATA_NONE);
 cgc.cmd[0] = GPCMD_LOAD_UNLOAD;
 cgc.cmd[4] = 2 + (slot >= 0);
 cgc.cmd[8] = slot;
 cgc.timeout = 60 * HZ;




 if (cdi->sanyo_slot && -1 < slot) {
  cgc.cmd[0] = GPCMD_TEST_UNIT_READY;
  cgc.cmd[7] = slot;
  cgc.cmd[4] = cgc.cmd[8] = 0;
  cdi->sanyo_slot = slot ? slot : 3;
 }

 return cdi->ops->generic_packet(cdi, &cgc);
}
