
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_eh_context {int dummy; } ;
struct ata_link {int device; struct ata_eh_context eh_context; } ;


 int DPRINTK (char*,unsigned int) ;
 int ata_sff_check_ready ;
 unsigned int ata_sff_dev_classify (int ,int,int *) ;
 unsigned long* sata_ehc_deb_timing (struct ata_eh_context*) ;
 int sata_link_hardreset (struct ata_link*,unsigned long const*,unsigned long,int*,int ) ;

int sata_sff_hardreset(struct ata_link *link, unsigned int *class,
         unsigned long deadline)
{
 struct ata_eh_context *ehc = &link->eh_context;
 const unsigned long *timing = sata_ehc_deb_timing(ehc);
 bool online;
 int rc;

 rc = sata_link_hardreset(link, timing, deadline, &online,
     ata_sff_check_ready);
 if (online)
  *class = ata_sff_dev_classify(link->device, 1, ((void*)0));

 DPRINTK("EXIT, class=%u\n", *class);
 return rc;
}
