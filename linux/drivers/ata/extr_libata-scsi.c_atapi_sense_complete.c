
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_queued_cmd {int err_mask; } ;


 int AC_ERR_DEV ;
 int ata_gen_passthru_sense (struct ata_queued_cmd*) ;
 int ata_qc_done (struct ata_queued_cmd*) ;

__attribute__((used)) static void atapi_sense_complete(struct ata_queued_cmd *qc)
{
 if (qc->err_mask && ((qc->err_mask & AC_ERR_DEV) == 0)) {





  ata_gen_passthru_sense(qc);
 }

 ata_qc_done(qc);
}
