
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_taskfile {scalar_t__ ctl; int flags; } ;
struct ata_port {scalar_t__ last_ctl; } ;


 int ATA_TFLAG_DEVICE ;
 int ata_sff_tf_load (struct ata_port*,struct ata_taskfile const*) ;

__attribute__((used)) static void svia_tf_load(struct ata_port *ap, const struct ata_taskfile *tf)
{
 struct ata_taskfile ttf;

 if (tf->ctl != ap->last_ctl) {
  ttf = *tf;
  ttf.flags |= ATA_TFLAG_DEVICE;
  tf = &ttf;
 }
 ata_sff_tf_load(ap, tf);
}
