
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ata_port {int print_id; int pflags; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* freeze ) (struct ata_port*) ;int error_handler; } ;


 int ATA_PFLAG_FROZEN ;
 int DPRINTK (char*,int ) ;
 int WARN_ON (int) ;
 int stub1 (struct ata_port*) ;

__attribute__((used)) static void __ata_port_freeze(struct ata_port *ap)
{
 WARN_ON(!ap->ops->error_handler);

 if (ap->ops->freeze)
  ap->ops->freeze(ap);

 ap->pflags |= ATA_PFLAG_FROZEN;

 DPRINTK("ata%u port frozen\n", ap->print_id);
}
