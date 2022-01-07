
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_queued_cmd {int flags; int err_mask; } ;


 int AC_ERR_OTHER ;
 int ATA_QCFLAG_FAILED ;

__attribute__((used)) static void sata_fsl_post_internal_cmd(struct ata_queued_cmd *qc)
{
 if (qc->flags & ATA_QCFLAG_FAILED)
  qc->err_mask |= AC_ERR_OTHER;

 if (qc->err_mask) {


 }
}
