
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_taskfile {int flags; int ctl; void* hob_lbah; void* hob_lbam; void* hob_lbal; void* hob_nsect; void* hob_feature; void* device; void* lbah; void* lbam; void* lbal; void* nsect; void* feature; int command; } ;
struct ata_ioports {int ctl_addr; int lbah_addr; int lbam_addr; int lbal_addr; int nsect_addr; int error_addr; int device_addr; } ;
struct ata_port {int last_ctl; struct ata_ioports ioaddr; } ;


 int ATA_HOB ;
 int ATA_TFLAG_LBA48 ;
 void* ioread32 (int ) ;
 int iowrite32 (int,int ) ;
 int sata_rcar_check_status (struct ata_port*) ;

__attribute__((used)) static void sata_rcar_tf_read(struct ata_port *ap, struct ata_taskfile *tf)
{
 struct ata_ioports *ioaddr = &ap->ioaddr;

 tf->command = sata_rcar_check_status(ap);
 tf->feature = ioread32(ioaddr->error_addr);
 tf->nsect = ioread32(ioaddr->nsect_addr);
 tf->lbal = ioread32(ioaddr->lbal_addr);
 tf->lbam = ioread32(ioaddr->lbam_addr);
 tf->lbah = ioread32(ioaddr->lbah_addr);
 tf->device = ioread32(ioaddr->device_addr);

 if (tf->flags & ATA_TFLAG_LBA48) {
  iowrite32(tf->ctl | ATA_HOB, ioaddr->ctl_addr);
  tf->hob_feature = ioread32(ioaddr->error_addr);
  tf->hob_nsect = ioread32(ioaddr->nsect_addr);
  tf->hob_lbal = ioread32(ioaddr->lbal_addr);
  tf->hob_lbam = ioread32(ioaddr->lbam_addr);
  tf->hob_lbah = ioread32(ioaddr->lbah_addr);
  iowrite32(tf->ctl, ioaddr->ctl_addr);
  ap->last_ctl = tf->ctl;
 }
}
