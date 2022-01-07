
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_port {struct ahci_port_priv* private_data; } ;
struct ata_link {size_t pmp; int flags; struct ata_port* ap; } ;
struct ahci_port_priv {struct ahci_em_priv* em_priv; } ;
struct ahci_em_priv {scalar_t__ blink_policy; int timer; struct ata_link* link; scalar_t__ activity; scalar_t__ saved_activity; } ;


 int ATA_LFLAG_SW_ACTIVITY ;
 int ahci_sw_activity_blink ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static void ahci_init_sw_activity(struct ata_link *link)
{
 struct ata_port *ap = link->ap;
 struct ahci_port_priv *pp = ap->private_data;
 struct ahci_em_priv *emp = &pp->em_priv[link->pmp];


 emp->saved_activity = emp->activity = 0;
 emp->link = link;
 timer_setup(&emp->timer, ahci_sw_activity_blink, 0);


 if (emp->blink_policy)
  link->flags |= ATA_LFLAG_SW_ACTIVITY;
}
