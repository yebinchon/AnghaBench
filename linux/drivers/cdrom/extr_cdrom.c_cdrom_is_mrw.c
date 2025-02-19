
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct packet_command {int* cmd; int quiet; } ;
struct mrw_feature_desc {int write; int feature_code; } ;
struct feature_header {int dummy; } ;
struct cdrom_device_info {TYPE_1__* ops; } ;
typedef int buffer ;
struct TYPE_2__ {int (* generic_packet ) (struct cdrom_device_info*,struct packet_command*) ;} ;


 scalar_t__ CDF_MRW ;
 int CGC_DATA_READ ;
 int GPCMD_GET_CONFIGURATION ;
 scalar_t__ be16_to_cpu (int ) ;
 int cdrom_mrw_probe_pc (struct cdrom_device_info*) ;
 int init_cdrom_command (struct packet_command*,unsigned char*,int,int ) ;
 int stub1 (struct cdrom_device_info*,struct packet_command*) ;

__attribute__((used)) static int cdrom_is_mrw(struct cdrom_device_info *cdi, int *write)
{
 struct packet_command cgc;
 struct mrw_feature_desc *mfd;
 unsigned char buffer[16];
 int ret;

 *write = 0;

 init_cdrom_command(&cgc, buffer, sizeof(buffer), CGC_DATA_READ);

 cgc.cmd[0] = GPCMD_GET_CONFIGURATION;
 cgc.cmd[3] = CDF_MRW;
 cgc.cmd[8] = sizeof(buffer);
 cgc.quiet = 1;

 if ((ret = cdi->ops->generic_packet(cdi, &cgc)))
  return ret;

 mfd = (struct mrw_feature_desc *)&buffer[sizeof(struct feature_header)];
 if (be16_to_cpu(mfd->feature_code) != CDF_MRW)
  return 1;
 *write = mfd->write;

 if ((ret = cdrom_mrw_probe_pc(cdi))) {
  *write = 0;
  return ret;
 }

 return 0;
}
