
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_port {struct ahci_port_priv* private_data; } ;
struct ata_link {size_t pmp; int flags; struct ata_port* ap; } ;
struct ahci_port_priv {struct ahci_em_priv* em_priv; } ;
struct ahci_em_priv {int timer; int activity; } ;


 int ATA_LFLAG_SW_ACTIVITY ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int) ;
 int timer_pending (int *) ;

__attribute__((used)) static void ahci_sw_activity(struct ata_link *link)
{
 struct ata_port *ap = link->ap;
 struct ahci_port_priv *pp = ap->private_data;
 struct ahci_em_priv *emp = &pp->em_priv[link->pmp];

 if (!(link->flags & ATA_LFLAG_SW_ACTIVITY))
  return;

 emp->activity++;
 if (!timer_pending(&emp->timer))
  mod_timer(&emp->timer, jiffies + msecs_to_jiffies(10));
}
