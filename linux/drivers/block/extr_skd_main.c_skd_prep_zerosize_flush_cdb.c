
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skd_scsi_request {scalar_t__* cdb; } ;
struct skd_request_context {int flush_cmd; } ;


 scalar_t__ SYNCHRONIZE_CACHE ;

__attribute__((used)) static void
skd_prep_zerosize_flush_cdb(struct skd_scsi_request *scsi_req,
       struct skd_request_context *skreq)
{
 skreq->flush_cmd = 1;

 scsi_req->cdb[0] = SYNCHRONIZE_CACHE;
 scsi_req->cdb[1] = 0;
 scsi_req->cdb[2] = 0;
 scsi_req->cdb[3] = 0;
 scsi_req->cdb[4] = 0;
 scsi_req->cdb[5] = 0;
 scsi_req->cdb[6] = 0;
 scsi_req->cdb[7] = 0;
 scsi_req->cdb[8] = 0;
 scsi_req->cdb[9] = 0;
}
