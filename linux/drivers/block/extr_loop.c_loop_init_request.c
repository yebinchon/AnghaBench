
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int dummy; } ;
struct loop_cmd {int work; } ;
struct blk_mq_tag_set {int dummy; } ;


 struct loop_cmd* blk_mq_rq_to_pdu (struct request*) ;
 int kthread_init_work (int *,int ) ;
 int loop_queue_work ;

__attribute__((used)) static int loop_init_request(struct blk_mq_tag_set *set, struct request *rq,
  unsigned int hctx_idx, unsigned int numa_node)
{
 struct loop_cmd *cmd = blk_mq_rq_to_pdu(rq);

 kthread_init_work(&cmd->work, loop_queue_work);
 return 0;
}
