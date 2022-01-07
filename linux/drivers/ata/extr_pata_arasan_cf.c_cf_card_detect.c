
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct ata_eh_info {int dummy; } ;
struct TYPE_4__ {struct ata_eh_info eh_info; } ;
struct ata_port {TYPE_2__ link; } ;
struct arasan_cf_dev {int card_present; scalar_t__ vbase; TYPE_1__* host; } ;
struct TYPE_3__ {struct ata_port** ports; } ;


 int CARD_DETECT1 ;
 int CARD_DETECT2 ;
 scalar_t__ CFI_STS ;
 int ata_ehi_hotplugged (struct ata_eh_info*) ;
 int ata_port_freeze (struct ata_port*) ;
 int cf_card_reset (struct arasan_cf_dev*) ;
 int readl (scalar_t__) ;

__attribute__((used)) static void cf_card_detect(struct arasan_cf_dev *acdev, bool hotplugged)
{
 struct ata_port *ap = acdev->host->ports[0];
 struct ata_eh_info *ehi = &ap->link.eh_info;
 u32 val = readl(acdev->vbase + CFI_STS);


 if (!(val & (CARD_DETECT1 | CARD_DETECT2))) {
  if (acdev->card_present)
   return;
  acdev->card_present = 1;
  cf_card_reset(acdev);
 } else {
  if (!acdev->card_present)
   return;
  acdev->card_present = 0;
 }

 if (hotplugged) {
  ata_ehi_hotplugged(ehi);
  ata_port_freeze(ap);
 }
}
