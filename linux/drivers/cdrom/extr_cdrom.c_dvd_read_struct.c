
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct packet_command {int dummy; } ;
struct cdrom_device_info {int dummy; } ;
struct TYPE_8__ {int type; } ;
typedef TYPE_1__ dvd_struct ;


 int CD_WARNING ;





 int EINVAL ;
 int cd_dbg (int ,char*,int) ;
 int dvd_read_bca (struct cdrom_device_info*,TYPE_1__*,struct packet_command*) ;
 int dvd_read_copyright (struct cdrom_device_info*,TYPE_1__*,struct packet_command*) ;
 int dvd_read_disckey (struct cdrom_device_info*,TYPE_1__*,struct packet_command*) ;
 int dvd_read_manufact (struct cdrom_device_info*,TYPE_1__*,struct packet_command*) ;
 int dvd_read_physical (struct cdrom_device_info*,TYPE_1__*,struct packet_command*) ;

__attribute__((used)) static int dvd_read_struct(struct cdrom_device_info *cdi, dvd_struct *s,
    struct packet_command *cgc)
{
 switch (s->type) {
 case 128:
  return dvd_read_physical(cdi, s, cgc);

 case 131:
  return dvd_read_copyright(cdi, s, cgc);

 case 130:
  return dvd_read_disckey(cdi, s, cgc);

 case 132:
  return dvd_read_bca(cdi, s, cgc);

 case 129:
  return dvd_read_manufact(cdi, s, cgc);

 default:
  cd_dbg(CD_WARNING, ": Invalid DVD structure read requested (%d)\n",
         s->type);
  return -EINVAL;
 }
}
