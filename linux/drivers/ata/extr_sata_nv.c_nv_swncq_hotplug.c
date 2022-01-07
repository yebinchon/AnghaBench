
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct ata_eh_info {int serror; } ;
struct TYPE_3__ {struct ata_eh_info eh_info; } ;
struct ata_port {TYPE_1__ link; } ;


 int NV_SWNCQ_IRQ_ADDED ;
 int NV_SWNCQ_IRQ_REMOVED ;
 int SCR_ERROR ;
 int ata_ehi_clear_desc (struct ata_eh_info*) ;
 int ata_ehi_hotplugged (struct ata_eh_info*) ;
 int ata_ehi_push_desc (struct ata_eh_info*,char*) ;
 int ata_port_freeze (struct ata_port*) ;
 int sata_scr_read (TYPE_1__*,int ,int*) ;
 int sata_scr_write (TYPE_1__*,int ,int) ;

__attribute__((used)) static void nv_swncq_hotplug(struct ata_port *ap, u32 fis)
{
 u32 serror;
 struct ata_eh_info *ehi = &ap->link.eh_info;

 ata_ehi_clear_desc(ehi);


 sata_scr_read(&ap->link, SCR_ERROR, &serror);
 sata_scr_write(&ap->link, SCR_ERROR, serror);


 if (fis & NV_SWNCQ_IRQ_ADDED)
  ata_ehi_push_desc(ehi, "hot plug");
 else if (fis & NV_SWNCQ_IRQ_REMOVED)
  ata_ehi_push_desc(ehi, "hot unplug");

 ata_ehi_hotplugged(ehi);


 ehi->serror |= serror;

 ata_port_freeze(ap);
}
