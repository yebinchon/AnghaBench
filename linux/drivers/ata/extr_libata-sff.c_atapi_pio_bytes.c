
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {unsigned int nsect; unsigned int lbam; unsigned int lbah; } ;
struct TYPE_6__ {int flags; } ;
struct ata_queued_cmd {int err_mask; TYPE_4__ result_tf; TYPE_2__ tf; struct ata_device* dev; struct ata_port* ap; } ;
struct ata_port {int hsm_task_state; int print_id; TYPE_3__* ops; } ;
struct ata_eh_info {int dummy; } ;
struct ata_device {TYPE_1__* link; } ;
struct TYPE_7__ {int (* sff_tf_read ) (struct ata_port*,TYPE_4__*) ;} ;
struct TYPE_5__ {struct ata_eh_info eh_info; } ;


 int AC_ERR_HSM ;
 unsigned int ATAPI_COD ;
 unsigned int ATAPI_IO ;
 int ATA_TFLAG_WRITE ;
 int HSM_ST_ERR ;
 int VPRINTK (char*,int ,unsigned int) ;
 int __atapi_pio_bytes (struct ata_queued_cmd*,unsigned int) ;
 int ata_ehi_push_desc (struct ata_eh_info*,char*,unsigned int,unsigned int) ;
 int ata_sff_sync (struct ata_port*) ;
 int stub1 (struct ata_port*,TYPE_4__*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void atapi_pio_bytes(struct ata_queued_cmd *qc)
{
 struct ata_port *ap = qc->ap;
 struct ata_device *dev = qc->dev;
 struct ata_eh_info *ehi = &dev->link->eh_info;
 unsigned int ireason, bc_lo, bc_hi, bytes;
 int i_write, do_write = (qc->tf.flags & ATA_TFLAG_WRITE) ? 1 : 0;







 ap->ops->sff_tf_read(ap, &qc->result_tf);
 ireason = qc->result_tf.nsect;
 bc_lo = qc->result_tf.lbam;
 bc_hi = qc->result_tf.lbah;
 bytes = (bc_hi << 8) | bc_lo;


 if (unlikely(ireason & ATAPI_COD))
  goto atapi_check;


 i_write = ((ireason & ATAPI_IO) == 0) ? 1 : 0;
 if (unlikely(do_write != i_write))
  goto atapi_check;

 if (unlikely(!bytes))
  goto atapi_check;

 VPRINTK("ata%u: xfering %d bytes\n", ap->print_id, bytes);

 if (unlikely(__atapi_pio_bytes(qc, bytes)))
  goto err_out;
 ata_sff_sync(ap);

 return;

 atapi_check:
 ata_ehi_push_desc(ehi, "ATAPI check failed (ireason=0x%x bytes=%u)",
     ireason, bytes);
 err_out:
 qc->err_mask |= AC_ERR_HSM;
 ap->hsm_task_state = HSM_ST_ERR;
}
