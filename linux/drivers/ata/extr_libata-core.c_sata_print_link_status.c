
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ata_link {int dummy; } ;


 int SCR_CONTROL ;
 int SCR_STATUS ;
 int ata_link_info (struct ata_link*,char*,int,int,...) ;
 scalar_t__ ata_phys_link_online (struct ata_link*) ;
 scalar_t__ sata_scr_read (struct ata_link*,int ,int*) ;
 int sata_spd_string (int) ;

__attribute__((used)) static void sata_print_link_status(struct ata_link *link)
{
 u32 sstatus, scontrol, tmp;

 if (sata_scr_read(link, SCR_STATUS, &sstatus))
  return;
 sata_scr_read(link, SCR_CONTROL, &scontrol);

 if (ata_phys_link_online(link)) {
  tmp = (sstatus >> 4) & 0xf;
  ata_link_info(link, "SATA link up %s (SStatus %X SControl %X)\n",
         sata_spd_string(tmp), sstatus, scontrol);
 } else {
  ata_link_info(link, "SATA link down (SStatus %X SControl %X)\n",
         sstatus, scontrol);
 }
}
