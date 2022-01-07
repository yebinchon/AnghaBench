
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bsg_job {int result; unsigned int reply_payload_rcv_len; } ;


 int blk_mq_complete_request (int ) ;
 int blk_mq_rq_from_pdu (struct bsg_job*) ;

void bsg_job_done(struct bsg_job *job, int result,
    unsigned int reply_payload_rcv_len)
{
 job->result = result;
 job->reply_payload_rcv_len = reply_payload_rcv_len;
 blk_mq_complete_request(blk_mq_rq_from_pdu(job));
}
