
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int dummy; } ;
struct bsg_job {int reply; } ;
struct blk_mq_tag_set {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int SCSI_SENSE_BUFFERSIZE ;
 struct bsg_job* blk_mq_rq_to_pdu (struct request*) ;
 int kzalloc (int ,int ) ;

__attribute__((used)) static int bsg_init_rq(struct blk_mq_tag_set *set, struct request *req,
         unsigned int hctx_idx, unsigned int numa_node)
{
 struct bsg_job *job = blk_mq_rq_to_pdu(req);

 job->reply = kzalloc(SCSI_SENSE_BUFFERSIZE, GFP_KERNEL);
 if (!job->reply)
  return -ENOMEM;
 return 0;
}
