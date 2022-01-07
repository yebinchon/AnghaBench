
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int serror; } ;
struct ata_eh_context {TYPE_1__ i; } ;
struct ata_link {struct ata_eh_context eh_context; } ;
typedef enum ata_lpm_policy { ____Placeholder_ata_lpm_policy } ata_lpm_policy ;







 int SCR_CONTROL ;
 int SCR_ERROR ;
 int SERR_PHYRDY_CHG ;
 int WARN_ON (int) ;
 int ata_link_nr_enabled (struct ata_link*) ;
 int msleep (int) ;
 int sata_scr_read (struct ata_link*,int ,int*) ;
 int sata_scr_write (struct ata_link*,int ,int) ;

int sata_link_scr_lpm(struct ata_link *link, enum ata_lpm_policy policy,
        bool spm_wakeup)
{
 struct ata_eh_context *ehc = &link->eh_context;
 bool woken_up = 0;
 u32 scontrol;
 int rc;

 rc = sata_scr_read(link, SCR_CONTROL, &scontrol);
 if (rc)
  return rc;

 switch (policy) {
 case 132:

  scontrol |= (0x7 << 8);

  if (spm_wakeup) {
   scontrol |= (0x4 << 12);
   woken_up = 1;
  }
  break;
 case 131:

  scontrol &= ~(0x1 << 8);
  scontrol |= (0x6 << 8);
  break;
 case 130:
 case 128:
 case 129:
  if (ata_link_nr_enabled(link) > 0)

   scontrol &= ~(0x7 << 8);
  else {

   scontrol &= ~0xf;
   scontrol |= (0x1 << 2);
  }
  break;
 default:
  WARN_ON(1);
 }

 rc = sata_scr_write(link, SCR_CONTROL, scontrol);
 if (rc)
  return rc;


 if (woken_up)
  msleep(10);


 ehc->i.serror &= ~SERR_PHYRDY_CHG;
 return sata_scr_write(link, SCR_ERROR, SERR_PHYRDY_CHG);
}
