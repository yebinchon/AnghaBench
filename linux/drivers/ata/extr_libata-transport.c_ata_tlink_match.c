
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct attribute_container {int dummy; } ;
struct TYPE_2__ {struct attribute_container ac; } ;
struct ata_internal {TYPE_1__ link_attr_cont; } ;


 int ata_is_link (struct device*) ;
 int ata_scsi_transport_template ;
 struct ata_internal* to_ata_internal (int ) ;

__attribute__((used)) static int ata_tlink_match(struct attribute_container *cont,
      struct device *dev)
{
 struct ata_internal* i = to_ata_internal(ata_scsi_transport_template);
 if (!ata_is_link(dev))
  return 0;
 return &i->link_attr_cont.ac == cont;
}
