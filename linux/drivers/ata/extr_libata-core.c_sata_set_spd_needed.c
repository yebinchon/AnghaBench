
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ata_link {int dummy; } ;


 int SCR_CONTROL ;
 int __sata_set_spd_needed (struct ata_link*,int *) ;
 scalar_t__ sata_scr_read (struct ata_link*,int ,int *) ;

__attribute__((used)) static int sata_set_spd_needed(struct ata_link *link)
{
 u32 scontrol;

 if (sata_scr_read(link, SCR_CONTROL, &scontrol))
  return 1;

 return __sata_set_spd_needed(link, &scontrol);
}
