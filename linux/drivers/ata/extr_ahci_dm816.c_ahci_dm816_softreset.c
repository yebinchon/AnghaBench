
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_link {int dummy; } ;


 int EBUSY ;
 int ahci_check_ready ;
 int ahci_do_softreset (struct ata_link*,unsigned int*,int,unsigned long,int ) ;
 int sata_srst_pmp (struct ata_link*) ;

__attribute__((used)) static int ahci_dm816_softreset(struct ata_link *link,
    unsigned int *class, unsigned long deadline)
{
 int pmp, ret;

 pmp = sata_srst_pmp(link);
 ret = ahci_do_softreset(link, class, pmp, deadline, ahci_check_ready);
 if (pmp && ret == -EBUSY)
  return ahci_do_softreset(link, class, 0,
      deadline, ahci_check_ready);

 return ret;
}
