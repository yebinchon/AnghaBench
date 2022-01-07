
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_taskfile {int flags; int command; int device; int lbah; int lbam; int lbal; int nsect; int feature; int protocol; } ;
struct ata_device {int dummy; } ;
struct ata_acpi_gtf {int * tf; } ;


 int ATA_PROT_NODATA ;
 int ATA_TFLAG_DEVICE ;
 int ATA_TFLAG_ISADDR ;
 int ata_tf_init (struct ata_device*,struct ata_taskfile*) ;

__attribute__((used)) static void ata_acpi_gtf_to_tf(struct ata_device *dev,
          const struct ata_acpi_gtf *gtf,
          struct ata_taskfile *tf)
{
 ata_tf_init(dev, tf);

 tf->flags |= ATA_TFLAG_ISADDR | ATA_TFLAG_DEVICE;
 tf->protocol = ATA_PROT_NODATA;
 tf->feature = gtf->tf[0];
 tf->nsect = gtf->tf[1];
 tf->lbal = gtf->tf[2];
 tf->lbam = gtf->tf[3];
 tf->lbah = gtf->tf[4];
 tf->device = gtf->tf[5];
 tf->command = gtf->tf[6];
}
