
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;
struct request {int dummy; } ;
struct blk_mq_tag_set {int dummy; } ;


 int INIT_WORK (struct work_struct*,int ) ;
 struct work_struct* blk_mq_rq_to_pdu (struct request*) ;
 int rbd_queue_workfn ;

__attribute__((used)) static int rbd_init_request(struct blk_mq_tag_set *set, struct request *rq,
  unsigned int hctx_idx, unsigned int numa_node)
{
 struct work_struct *work = blk_mq_rq_to_pdu(rq);

 INIT_WORK(work, rbd_queue_workfn);
 return 0;
}
