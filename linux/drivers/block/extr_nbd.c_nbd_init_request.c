
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int dummy; } ;
struct nbd_cmd {int lock; scalar_t__ flags; int nbd; } ;
struct blk_mq_tag_set {int driver_data; } ;


 struct nbd_cmd* blk_mq_rq_to_pdu (struct request*) ;
 int mutex_init (int *) ;

__attribute__((used)) static int nbd_init_request(struct blk_mq_tag_set *set, struct request *rq,
       unsigned int hctx_idx, unsigned int numa_node)
{
 struct nbd_cmd *cmd = blk_mq_rq_to_pdu(rq);
 cmd->nbd = set->driver_data;
 cmd->flags = 0;
 mutex_init(&cmd->lock);
 return 0;
}
