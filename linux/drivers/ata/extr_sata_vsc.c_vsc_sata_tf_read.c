
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ata_taskfile {int feature; int nsect; int lbal; int lbam; int lbah; int flags; int hob_feature; int hob_nsect; int hob_lbal; int hob_lbam; int hob_lbah; void* device; int command; } ;
struct ata_ioports {int lbah_addr; int lbam_addr; int lbal_addr; int nsect_addr; int error_addr; int device_addr; } ;
struct ata_port {struct ata_ioports ioaddr; } ;


 int ATA_TFLAG_LBA48 ;
 int ata_sff_check_status (struct ata_port*) ;
 void* readw (int ) ;

__attribute__((used)) static void vsc_sata_tf_read(struct ata_port *ap, struct ata_taskfile *tf)
{
 struct ata_ioports *ioaddr = &ap->ioaddr;
 u16 nsect, lbal, lbam, lbah, feature;

 tf->command = ata_sff_check_status(ap);
 tf->device = readw(ioaddr->device_addr);
 feature = readw(ioaddr->error_addr);
 nsect = readw(ioaddr->nsect_addr);
 lbal = readw(ioaddr->lbal_addr);
 lbam = readw(ioaddr->lbam_addr);
 lbah = readw(ioaddr->lbah_addr);

 tf->feature = feature;
 tf->nsect = nsect;
 tf->lbal = lbal;
 tf->lbam = lbam;
 tf->lbah = lbah;

 if (tf->flags & ATA_TFLAG_LBA48) {
  tf->hob_feature = feature >> 8;
  tf->hob_nsect = nsect >> 8;
  tf->hob_lbal = lbal >> 8;
  tf->hob_lbam = lbam >> 8;
  tf->hob_lbah = lbah >> 8;
 }
}
