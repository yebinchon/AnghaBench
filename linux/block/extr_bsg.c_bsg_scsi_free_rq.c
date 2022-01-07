
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int dummy; } ;


 int scsi_req (struct request*) ;
 int scsi_req_free_cmd (int ) ;

__attribute__((used)) static void bsg_scsi_free_rq(struct request *rq)
{
 scsi_req_free_cmd(scsi_req(rq));
}
