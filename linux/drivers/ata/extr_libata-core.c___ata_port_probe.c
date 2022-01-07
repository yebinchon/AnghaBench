
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ata_eh_info {int flags; int action; int probe_mask; } ;
struct TYPE_2__ {struct ata_eh_info eh_info; } ;
struct ata_port {int lock; int pflags; TYPE_1__ link; } ;


 int ATA_ALL_DEVICES ;
 int ATA_EHI_NO_AUTOPSY ;
 int ATA_EHI_QUIET ;
 int ATA_EH_RESET ;
 int ATA_PFLAG_INITIALIZING ;
 int ATA_PFLAG_LOADING ;
 int ata_port_schedule_eh (struct ata_port*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

void __ata_port_probe(struct ata_port *ap)
{
 struct ata_eh_info *ehi = &ap->link.eh_info;
 unsigned long flags;


 spin_lock_irqsave(ap->lock, flags);

 ehi->probe_mask |= ATA_ALL_DEVICES;
 ehi->action |= ATA_EH_RESET;
 ehi->flags |= ATA_EHI_NO_AUTOPSY | ATA_EHI_QUIET;

 ap->pflags &= ~ATA_PFLAG_INITIALIZING;
 ap->pflags |= ATA_PFLAG_LOADING;
 ata_port_schedule_eh(ap);

 spin_unlock_irqrestore(ap->lock, flags);
}
