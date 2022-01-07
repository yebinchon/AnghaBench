
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_taskfile {unsigned int flags; scalar_t__ ctl; scalar_t__ hob_feature; scalar_t__ hob_nsect; scalar_t__ hob_lbal; scalar_t__ hob_lbam; scalar_t__ hob_lbah; scalar_t__ feature; scalar_t__ nsect; scalar_t__ lbal; scalar_t__ lbam; scalar_t__ lbah; scalar_t__ device; } ;
struct ata_ioports {int device_addr; int lbah_addr; int lbam_addr; int lbal_addr; int nsect_addr; int feature_addr; int ctl_addr; } ;
struct ata_port {scalar_t__ last_ctl; int host; struct ata_ioports ioaddr; } ;


 int ATA_TFLAG_DEVICE ;
 unsigned int ATA_TFLAG_ISADDR ;
 int ATA_TFLAG_LBA48 ;
 int ata_outb (int ,scalar_t__,int ) ;
 int ata_wait_idle (struct ata_port*) ;

__attribute__((used)) static void pata_s3c_tf_load(struct ata_port *ap,
    const struct ata_taskfile *tf)
{
 struct ata_ioports *ioaddr = &ap->ioaddr;
 unsigned int is_addr = tf->flags & ATA_TFLAG_ISADDR;

 if (tf->ctl != ap->last_ctl) {
  ata_outb(ap->host, tf->ctl, ioaddr->ctl_addr);
  ap->last_ctl = tf->ctl;
  ata_wait_idle(ap);
 }

 if (is_addr && (tf->flags & ATA_TFLAG_LBA48)) {
  ata_outb(ap->host, tf->hob_feature, ioaddr->feature_addr);
  ata_outb(ap->host, tf->hob_nsect, ioaddr->nsect_addr);
  ata_outb(ap->host, tf->hob_lbal, ioaddr->lbal_addr);
  ata_outb(ap->host, tf->hob_lbam, ioaddr->lbam_addr);
  ata_outb(ap->host, tf->hob_lbah, ioaddr->lbah_addr);
 }

 if (is_addr) {
  ata_outb(ap->host, tf->feature, ioaddr->feature_addr);
  ata_outb(ap->host, tf->nsect, ioaddr->nsect_addr);
  ata_outb(ap->host, tf->lbal, ioaddr->lbal_addr);
  ata_outb(ap->host, tf->lbam, ioaddr->lbam_addr);
  ata_outb(ap->host, tf->lbah, ioaddr->lbah_addr);
 }

 if (tf->flags & ATA_TFLAG_DEVICE)
  ata_outb(ap->host, tf->device, ioaddr->device_addr);

 ata_wait_idle(ap);
}
