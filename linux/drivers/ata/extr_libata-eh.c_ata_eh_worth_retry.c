
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_queued_cmd {int err_mask; int flags; } ;


 int AC_ERR_DEV ;
 int AC_ERR_INVALID ;
 int AC_ERR_MEDIA ;
 int ATA_QCFLAG_IO ;

__attribute__((used)) static inline int ata_eh_worth_retry(struct ata_queued_cmd *qc)
{
 if (qc->err_mask & AC_ERR_MEDIA)
  return 0;
 if (qc->flags & ATA_QCFLAG_IO)
  return 1;
 if (qc->err_mask & AC_ERR_INVALID)
  return 0;
 return qc->err_mask != AC_ERR_DEV;
}
