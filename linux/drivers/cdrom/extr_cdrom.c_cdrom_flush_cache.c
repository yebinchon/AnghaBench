
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct packet_command {int timeout; int * cmd; } ;
struct cdrom_device_info {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* generic_packet ) (struct cdrom_device_info*,struct packet_command*) ;} ;


 int CGC_DATA_NONE ;
 int GPCMD_FLUSH_CACHE ;
 int HZ ;
 int init_cdrom_command (struct packet_command*,int *,int ,int ) ;
 int stub1 (struct cdrom_device_info*,struct packet_command*) ;

__attribute__((used)) static int cdrom_flush_cache(struct cdrom_device_info *cdi)
{
 struct packet_command cgc;

 init_cdrom_command(&cgc, ((void*)0), 0, CGC_DATA_NONE);
 cgc.cmd[0] = GPCMD_FLUSH_CACHE;

 cgc.timeout = 5 * 60 * HZ;

 return cdi->ops->generic_packet(cdi, &cgc);
}
