
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_transport_template {int dummy; } ;
struct TYPE_2__ {int host_attrs; } ;
struct ata_internal {int dev_attr_cont; int link_attr_cont; TYPE_1__ t; } ;


 int kfree (struct ata_internal*) ;
 struct ata_internal* to_ata_internal (struct scsi_transport_template*) ;
 int transport_container_unregister (int *) ;

void ata_release_transport(struct scsi_transport_template *t)
{
 struct ata_internal *i = to_ata_internal(t);

 transport_container_unregister(&i->t.host_attrs);
 transport_container_unregister(&i->link_attr_cont);
 transport_container_unregister(&i->dev_attr_cont);

 kfree(i);
}
