
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rwrt_feature_desc {int dummy; } ;
struct packet_command {int* cmd; int quiet; } ;
struct feature_header {int dummy; } ;
struct cdrom_device_info {TYPE_1__* ops; } ;
typedef int buffer ;
struct TYPE_2__ {int (* generic_packet ) (struct cdrom_device_info*,struct packet_command*) ;} ;


 int CDF_RWRT ;
 int CGC_DATA_READ ;
 int GPCMD_GET_CONFIGURATION ;
 int init_cdrom_command (struct packet_command*,char*,int,int ) ;
 int memcpy (struct rwrt_feature_desc*,char*,int) ;
 int stub1 (struct cdrom_device_info*,struct packet_command*) ;

__attribute__((used)) static int cdrom_get_random_writable(struct cdrom_device_info *cdi,
         struct rwrt_feature_desc *rfd)
{
 struct packet_command cgc;
 char buffer[24];
 int ret;

 init_cdrom_command(&cgc, buffer, sizeof(buffer), CGC_DATA_READ);

 cgc.cmd[0] = GPCMD_GET_CONFIGURATION;
 cgc.cmd[3] = CDF_RWRT;
 cgc.cmd[8] = sizeof(buffer);
 cgc.quiet = 1;

 if ((ret = cdi->ops->generic_packet(cdi, &cgc)))
  return ret;

 memcpy(rfd, &buffer[sizeof(struct feature_header)], sizeof (*rfd));
 return 0;
}
