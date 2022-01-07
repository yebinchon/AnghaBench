
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ata_port {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* sched_eh ) (struct ata_port*) ;} ;


 int stub1 (struct ata_port*) ;

void ata_port_schedule_eh(struct ata_port *ap)
{

 ap->ops->sched_eh(ap);
}
