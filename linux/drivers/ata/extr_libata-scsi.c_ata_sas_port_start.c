
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ata_port {int pflags; TYPE_1__* ops; } ;
struct TYPE_2__ {int error_handler; } ;


 int ATA_PFLAG_FROZEN ;

int ata_sas_port_start(struct ata_port *ap)
{




 if (!ap->ops->error_handler)
  ap->pflags &= ~ATA_PFLAG_FROZEN;
 return 0;
}
