
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_link {int eh_context; } ;


 int EAGAIN ;
 unsigned long* sata_ehc_deb_timing (int *) ;
 int sata_link_hardreset (struct ata_link*,unsigned long const*,unsigned long,int*,int *) ;

int sata_std_hardreset(struct ata_link *link, unsigned int *class,
         unsigned long deadline)
{
 const unsigned long *timing = sata_ehc_deb_timing(&link->eh_context);
 bool online;
 int rc;


 rc = sata_link_hardreset(link, timing, deadline, &online, ((void*)0));
 return online ? -EAGAIN : rc;
}
