
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int action; } ;
struct ata_eh_context {TYPE_2__ i; } ;
struct TYPE_3__ {struct ata_eh_context eh_context; } ;
struct ata_port {int pflags; TYPE_1__ link; } ;
struct ata_link {struct ata_port* ap; } ;


 int ATA_EH_RESET ;
 int ATA_PFLAG_LOADING ;
 int HZ ;
 int SCR_CONTROL ;
 int SCR_STATUS ;
 int ata_msleep (struct ata_port*,int) ;
 int ata_port_info (struct ata_port*,char*,char*,int,int) ;
 int ata_sff_wait_ready (struct ata_link*,unsigned long) ;
 int jiffies ;
 int svia_scr_read (struct ata_link*,int ,int*) ;
 int svia_scr_write (struct ata_link*,int ,int) ;
 scalar_t__ time_before (int,unsigned long) ;

__attribute__((used)) static int vt6420_prereset(struct ata_link *link, unsigned long deadline)
{
 struct ata_port *ap = link->ap;
 struct ata_eh_context *ehc = &ap->link.eh_context;
 unsigned long timeout = jiffies + (HZ * 5);
 u32 sstatus, scontrol;
 int online;


 if (!(ap->pflags & ATA_PFLAG_LOADING))
  goto skip_scr;


 svia_scr_write(link, SCR_CONTROL, 0x300);
 svia_scr_read(link, SCR_CONTROL, &scontrol);


 do {
  ata_msleep(link->ap, 200);
  svia_scr_read(link, SCR_STATUS, &sstatus);
  if ((sstatus & 0xf) != 1)
   break;
 } while (time_before(jiffies, timeout));


 svia_scr_read(link, SCR_STATUS, &sstatus);
 svia_scr_read(link, SCR_CONTROL, &scontrol);

 online = (sstatus & 0xf) == 0x3;

 ata_port_info(ap,
        "SATA link %s 1.5 Gbps (SStatus %X SControl %X)\n",
        online ? "up" : "down", sstatus, scontrol);


 svia_scr_read(link, SCR_STATUS, &sstatus);

 if (!online) {

  ehc->i.action &= ~ATA_EH_RESET;
  return 0;
 }

 skip_scr:

 ata_sff_wait_ready(link, deadline);

 return 0;
}
