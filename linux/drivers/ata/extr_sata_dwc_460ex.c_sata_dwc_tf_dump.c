
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_taskfile {int hob_lbah; int hob_lbam; int hob_lbal; int hob_nsect; int hob_feature; int lbah; int lbam; int lbal; int nsect; int feature; int device; int flags; int protocol; int command; } ;
struct ata_port {int dev; } ;


 int dev_vdbg (int ,char*,int ,int ,int ,int ,...) ;
 int get_prot_descript (int ) ;

__attribute__((used)) static void sata_dwc_tf_dump(struct ata_port *ap, struct ata_taskfile *tf)
{
 dev_vdbg(ap->dev,
  "taskfile cmd: 0x%02x protocol: %s flags: 0x%lx device: %x\n",
  tf->command, get_prot_descript(tf->protocol), tf->flags,
  tf->device);
 dev_vdbg(ap->dev,
  "feature: 0x%02x nsect: 0x%x lbal: 0x%x lbam: 0x%x lbah: 0x%x\n",
  tf->feature, tf->nsect, tf->lbal, tf->lbam, tf->lbah);
 dev_vdbg(ap->dev,
  "hob_feature: 0x%02x hob_nsect: 0x%x hob_lbal: 0x%x hob_lbam: 0x%x hob_lbah: 0x%x\n",
  tf->hob_feature, tf->hob_nsect, tf->hob_lbal, tf->hob_lbam,
  tf->hob_lbah);
}
