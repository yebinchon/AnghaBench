
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skd_request_context {scalar_t__ sksg_list; int sksg_dma_address; void* sg; int state; } ;
struct skd_device {int dummy; } ;
struct request {int dummy; } ;
struct blk_mq_tag_set {struct skd_device* driver_data; } ;


 int ENOMEM ;
 int SKD_REQ_STATE_IDLE ;
 struct skd_request_context* blk_mq_rq_to_pdu (struct request*) ;
 int sg_init_table (void*,int ) ;
 scalar_t__ skd_cons_sg_list (struct skd_device*,int ,int *) ;
 int skd_sgs_per_request ;

__attribute__((used)) static int skd_init_request(struct blk_mq_tag_set *set, struct request *rq,
       unsigned int hctx_idx, unsigned int numa_node)
{
 struct skd_device *skdev = set->driver_data;
 struct skd_request_context *skreq = blk_mq_rq_to_pdu(rq);

 skreq->state = SKD_REQ_STATE_IDLE;
 skreq->sg = (void *)(skreq + 1);
 sg_init_table(skreq->sg, skd_sgs_per_request);
 skreq->sksg_list = skd_cons_sg_list(skdev, skd_sgs_per_request,
         &skreq->sksg_dma_address);

 return skreq->sksg_list ? 0 : -ENOMEM;
}
