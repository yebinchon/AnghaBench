
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ep93xx_pata_data {int dummy; } ;
struct ata_taskfile {int flags; int ctl; void* hob_lbah; void* hob_lbam; void* hob_lbal; void* hob_nsect; void* hob_feature; void* device; void* lbah; void* lbam; void* lbal; void* nsect; void* feature; int command; } ;
struct ata_port {int last_ctl; TYPE_1__* host; } ;
struct TYPE_2__ {struct ep93xx_pata_data* private_data; } ;


 int ATA_HOB ;
 int ATA_TFLAG_LBA48 ;
 int IDECTRL_ADDR_CTL ;
 int IDECTRL_ADDR_DEVICE ;
 int IDECTRL_ADDR_FEATURE ;
 int IDECTRL_ADDR_LBAH ;
 int IDECTRL_ADDR_LBAL ;
 int IDECTRL_ADDR_LBAM ;
 int IDECTRL_ADDR_NSECT ;
 int ep93xx_pata_check_status (struct ata_port*) ;
 void* ep93xx_pata_read_reg (struct ep93xx_pata_data*,int ) ;
 int ep93xx_pata_write_reg (struct ep93xx_pata_data*,int,int ) ;

__attribute__((used)) static void ep93xx_pata_tf_read(struct ata_port *ap, struct ata_taskfile *tf)
{
 struct ep93xx_pata_data *drv_data = ap->host->private_data;

 tf->command = ep93xx_pata_check_status(ap);
 tf->feature = ep93xx_pata_read_reg(drv_data, IDECTRL_ADDR_FEATURE);
 tf->nsect = ep93xx_pata_read_reg(drv_data, IDECTRL_ADDR_NSECT);
 tf->lbal = ep93xx_pata_read_reg(drv_data, IDECTRL_ADDR_LBAL);
 tf->lbam = ep93xx_pata_read_reg(drv_data, IDECTRL_ADDR_LBAM);
 tf->lbah = ep93xx_pata_read_reg(drv_data, IDECTRL_ADDR_LBAH);
 tf->device = ep93xx_pata_read_reg(drv_data, IDECTRL_ADDR_DEVICE);

 if (tf->flags & ATA_TFLAG_LBA48) {
  ep93xx_pata_write_reg(drv_data, tf->ctl | ATA_HOB,
   IDECTRL_ADDR_CTL);
  tf->hob_feature = ep93xx_pata_read_reg(drv_data,
   IDECTRL_ADDR_FEATURE);
  tf->hob_nsect = ep93xx_pata_read_reg(drv_data,
   IDECTRL_ADDR_NSECT);
  tf->hob_lbal = ep93xx_pata_read_reg(drv_data,
   IDECTRL_ADDR_LBAL);
  tf->hob_lbam = ep93xx_pata_read_reg(drv_data,
   IDECTRL_ADDR_LBAM);
  tf->hob_lbah = ep93xx_pata_read_reg(drv_data,
   IDECTRL_ADDR_LBAH);
  ep93xx_pata_write_reg(drv_data, tf->ctl, IDECTRL_ADDR_CTL);
  ap->last_ctl = tf->ctl;
 }
}
