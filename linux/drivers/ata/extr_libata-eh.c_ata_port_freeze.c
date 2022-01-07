
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ata_port {TYPE_1__* ops; } ;
struct TYPE_2__ {int error_handler; } ;


 int WARN_ON (int) ;
 int __ata_port_freeze (struct ata_port*) ;
 int ata_port_abort (struct ata_port*) ;

int ata_port_freeze(struct ata_port *ap)
{
 int nr_aborted;

 WARN_ON(!ap->ops->error_handler);

 __ata_port_freeze(ap);
 nr_aborted = ata_port_abort(ap);

 return nr_aborted;
}
