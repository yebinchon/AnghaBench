
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int dummy; } ;
struct bsg_job {struct bsg_job* dd_data; int reply_len; void* reply; } ;


 int SCSI_SENSE_BUFFERSIZE ;
 struct bsg_job* blk_mq_rq_to_pdu (struct request*) ;
 int memset (struct bsg_job*,int ,int) ;

__attribute__((used)) static void bsg_initialize_rq(struct request *req)
{
 struct bsg_job *job = blk_mq_rq_to_pdu(req);
 void *reply = job->reply;

 memset(job, 0, sizeof(*job));
 job->reply = reply;
 job->reply_len = SCSI_SENSE_BUFFERSIZE;
 job->dd_data = job + 1;
}
