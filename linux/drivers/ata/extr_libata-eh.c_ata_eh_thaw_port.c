
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ata_port {int print_id; int lock; TYPE_1__* ops; int pflags; } ;
struct TYPE_2__ {int (* thaw ) (struct ata_port*) ;int error_handler; } ;


 int ATA_PFLAG_FROZEN ;
 int DPRINTK (char*,int ) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int stub1 (struct ata_port*) ;

void ata_eh_thaw_port(struct ata_port *ap)
{
 unsigned long flags;

 if (!ap->ops->error_handler)
  return;

 spin_lock_irqsave(ap->lock, flags);

 ap->pflags &= ~ATA_PFLAG_FROZEN;

 if (ap->ops->thaw)
  ap->ops->thaw(ap);

 spin_unlock_irqrestore(ap->lock, flags);

 DPRINTK("ata%u port thawed\n", ap->print_id);
}
