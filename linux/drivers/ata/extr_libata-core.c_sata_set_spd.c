
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ata_link {int dummy; } ;


 int SCR_CONTROL ;
 int __sata_set_spd_needed (struct ata_link*,int *) ;
 int sata_scr_read (struct ata_link*,int ,int *) ;
 int sata_scr_write (struct ata_link*,int ,int ) ;

int sata_set_spd(struct ata_link *link)
{
 u32 scontrol;
 int rc;

 if ((rc = sata_scr_read(link, SCR_CONTROL, &scontrol)))
  return rc;

 if (!__sata_set_spd_needed(link, &scontrol))
  return 0;

 if ((rc = sata_scr_write(link, SCR_CONTROL, scontrol)))
  return rc;

 return 1;
}
