
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_link {int dummy; } ;
typedef enum ata_lpm_policy { ____Placeholder_ata_lpm_policy } ata_lpm_policy ;


 int sata_link_scr_lpm (struct ata_link*,int,int) ;

__attribute__((used)) static int piix_sidpr_set_lpm(struct ata_link *link, enum ata_lpm_policy policy,
         unsigned hints)
{
 return sata_link_scr_lpm(link, policy, 0);
}
