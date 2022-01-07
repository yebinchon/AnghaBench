
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device {int dummy; } ;
struct attribute_container {int dummy; } ;
struct TYPE_3__ {struct attribute_container ac; } ;
struct TYPE_4__ {TYPE_1__ host_attrs; } ;


 int ata_is_port (struct device*) ;
 TYPE_2__* ata_scsi_transport_template ;

__attribute__((used)) static int ata_tport_match(struct attribute_container *cont,
      struct device *dev)
{
 if (!ata_is_port(dev))
  return 0;
 return &ata_scsi_transport_template->host_attrs.ac == cont;
}
