
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_link {int ap; } ;


 int ATA_WAIT_AFTER_RESET ;
 int ata_msleep (int ,int ) ;
 int ata_sff_wait_ready (struct ata_link*,unsigned long) ;

__attribute__((used)) static int pata_s3c_wait_after_reset(struct ata_link *link,
  unsigned long deadline)
{
 int rc;

 ata_msleep(link->ap, ATA_WAIT_AFTER_RESET);


 rc = ata_sff_wait_ready(link, deadline);



 if (rc)
  return rc;

 return 0;
}
