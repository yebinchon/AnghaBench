
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct packet_command {int* cmd; int quiet; } ;
struct feature_header {int dummy; } ;
struct cdrom_device_info {TYPE_1__* ops; } ;
typedef int buffer ;
typedef int __be16 ;
struct TYPE_2__ {int (* generic_packet ) (struct cdrom_device_info*,struct packet_command*) ;} ;


 scalar_t__ CDF_HWDM ;
 int CGC_DATA_READ ;
 int GPCMD_GET_CONFIGURATION ;
 scalar_t__ be16_to_cpu (int ) ;
 int init_cdrom_command (struct packet_command*,char*,int,int ) ;
 int stub1 (struct cdrom_device_info*,struct packet_command*) ;

__attribute__((used)) static int cdrom_has_defect_mgt(struct cdrom_device_info *cdi)
{
 struct packet_command cgc;
 char buffer[16];
 __be16 *feature_code;
 int ret;

 init_cdrom_command(&cgc, buffer, sizeof(buffer), CGC_DATA_READ);

 cgc.cmd[0] = GPCMD_GET_CONFIGURATION;
 cgc.cmd[3] = CDF_HWDM;
 cgc.cmd[8] = sizeof(buffer);
 cgc.quiet = 1;

 if ((ret = cdi->ops->generic_packet(cdi, &cgc)))
  return ret;

 feature_code = (__be16 *) &buffer[sizeof(struct feature_header)];
 if (be16_to_cpu(*feature_code) == CDF_HWDM)
  return 0;

 return 1;
}
