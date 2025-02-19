
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ep93xx_pata_data {int dummy; } ;
struct ata_taskfile {unsigned int flags; scalar_t__ ctl; scalar_t__ hob_feature; scalar_t__ hob_nsect; scalar_t__ hob_lbal; scalar_t__ hob_lbam; scalar_t__ hob_lbah; scalar_t__ feature; scalar_t__ nsect; scalar_t__ lbal; scalar_t__ lbam; scalar_t__ lbah; scalar_t__ device; } ;
struct ata_port {scalar_t__ last_ctl; TYPE_1__* host; } ;
struct TYPE_2__ {struct ep93xx_pata_data* private_data; } ;


 int ATA_TFLAG_DEVICE ;
 unsigned int ATA_TFLAG_ISADDR ;
 int ATA_TFLAG_LBA48 ;
 int IDECTRL_ADDR_CTL ;
 int IDECTRL_ADDR_DEVICE ;
 int IDECTRL_ADDR_FEATURE ;
 int IDECTRL_ADDR_LBAH ;
 int IDECTRL_ADDR_LBAL ;
 int IDECTRL_ADDR_LBAM ;
 int IDECTRL_ADDR_NSECT ;
 int ata_wait_idle (struct ata_port*) ;
 int ep93xx_pata_write_reg (struct ep93xx_pata_data*,scalar_t__,int ) ;

__attribute__((used)) static void ep93xx_pata_tf_load(struct ata_port *ap,
    const struct ata_taskfile *tf)
{
 struct ep93xx_pata_data *drv_data = ap->host->private_data;
 unsigned int is_addr = tf->flags & ATA_TFLAG_ISADDR;

 if (tf->ctl != ap->last_ctl) {
  ep93xx_pata_write_reg(drv_data, tf->ctl, IDECTRL_ADDR_CTL);
  ap->last_ctl = tf->ctl;
  ata_wait_idle(ap);
 }

 if (is_addr && (tf->flags & ATA_TFLAG_LBA48)) {
  ep93xx_pata_write_reg(drv_data, tf->hob_feature,
   IDECTRL_ADDR_FEATURE);
  ep93xx_pata_write_reg(drv_data, tf->hob_nsect,
   IDECTRL_ADDR_NSECT);
  ep93xx_pata_write_reg(drv_data, tf->hob_lbal,
   IDECTRL_ADDR_LBAL);
  ep93xx_pata_write_reg(drv_data, tf->hob_lbam,
   IDECTRL_ADDR_LBAM);
  ep93xx_pata_write_reg(drv_data, tf->hob_lbah,
   IDECTRL_ADDR_LBAH);
 }

 if (is_addr) {
  ep93xx_pata_write_reg(drv_data, tf->feature,
   IDECTRL_ADDR_FEATURE);
  ep93xx_pata_write_reg(drv_data, tf->nsect, IDECTRL_ADDR_NSECT);
  ep93xx_pata_write_reg(drv_data, tf->lbal, IDECTRL_ADDR_LBAL);
  ep93xx_pata_write_reg(drv_data, tf->lbam, IDECTRL_ADDR_LBAM);
  ep93xx_pata_write_reg(drv_data, tf->lbah, IDECTRL_ADDR_LBAH);
 }

 if (tf->flags & ATA_TFLAG_DEVICE)
  ep93xx_pata_write_reg(drv_data, tf->device,
   IDECTRL_ADDR_DEVICE);

 ata_wait_idle(ap);
}
