
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ata_queued_cmd {int flags; TYPE_2__* scsicmd; } ;
struct TYPE_4__ {TYPE_1__* request; } ;
struct TYPE_3__ {int rq_flags; } ;


 int ATA_QCFLAG_QUIET ;
 int RQF_QUIET ;

__attribute__((used)) static inline bool ata_eh_quiet(struct ata_queued_cmd *qc)
{
 if (qc->scsicmd &&
     qc->scsicmd->request->rq_flags & RQF_QUIET)
  qc->flags |= ATA_QCFLAG_QUIET;
 return qc->flags & ATA_QCFLAG_QUIET;
}
