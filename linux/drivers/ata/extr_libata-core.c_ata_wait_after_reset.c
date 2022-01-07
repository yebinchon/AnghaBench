
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_link {int ap; } ;


 int ATA_WAIT_AFTER_RESET ;
 int ata_msleep (int ,int ) ;
 int ata_wait_ready (struct ata_link*,unsigned long,int (*) (struct ata_link*)) ;

int ata_wait_after_reset(struct ata_link *link, unsigned long deadline,
    int (*check_ready)(struct ata_link *link))
{
 ata_msleep(link->ap, ATA_WAIT_AFTER_RESET);

 return ata_wait_ready(link, deadline, check_ready);
}
