
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_link {int dummy; } ;


 int ahci_do_hardreset (struct ata_link*,unsigned int*,unsigned long,int*) ;

__attribute__((used)) static int ahci_hardreset(struct ata_link *link, unsigned int *class,
     unsigned long deadline)
{
 bool online;

 return ahci_do_hardreset(link, class, deadline, &online);
}
