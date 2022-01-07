
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct scatterlist {int dummy; } ;
struct request_queue {struct carm_port* queuedata; } ;
struct request {int tag; } ;
struct carm_request {int n_elem; int msg_bucket; struct scatterlist* sg; void* msg_type; } ;
struct carm_port {int port_no; struct carm_host* host; } ;
struct carm_msg_sg {void* len; void* start; } ;
struct carm_msg_rw {int sg_count; struct carm_msg_sg* sg; void* lba_count; void* lba_high; void* lba; void* handle; int sg_type; int id; void* type; } ;
struct carm_host {int hw_sg_used; int lock; TYPE_1__* pdev; } ;
struct blk_mq_queue_data {struct request* rq; } ;
struct blk_mq_hw_ctx {struct request_queue* queue; } ;
typedef int blk_status_t ;
struct TYPE_2__ {int dev; } ;


 int BLK_STS_DEV_RESOURCE ;
 int BLK_STS_IOERR ;
 int BLK_STS_OK ;
 int BUG_ON (int) ;
 int CARM_MAX_HOST_SG ;
 int CARM_MAX_REQ_SG ;
 void* CARM_MSG_READ ;
 void* CARM_MSG_WRITE ;
 scalar_t__ REQ_OP_DRV_OUT ;
 int SGT_32BIT ;
 int TAG_ENCODE (int ) ;
 int VPRINTK (char*,...) ;
 scalar_t__ WRITE ;
 struct carm_request* blk_mq_rq_to_pdu (struct request*) ;
 int blk_mq_start_request (struct request*) ;
 int blk_rq_map_sg (struct request_queue*,struct request*,struct scatterlist*) ;
 int blk_rq_pos (struct request*) ;
 int blk_rq_sectors (struct request*) ;
 int carm_lookup_bucket (unsigned int) ;
 int carm_push_q (struct carm_host*,struct request_queue*) ;
 scalar_t__ carm_ref_msg (struct carm_host*,int ) ;
 int carm_round_robin (struct carm_host*) ;
 int carm_rq_dir (struct request*) ;
 int carm_send_msg (struct carm_host*,struct carm_request*,int ) ;
 void* cpu_to_le16 (int ) ;
 void* cpu_to_le32 (int) ;
 int dma_map_sg (int *,struct scatterlist*,int,int ) ;
 int dma_unmap_sg (int *,struct scatterlist*,int,int ) ;
 scalar_t__ req_op (struct request*) ;
 scalar_t__ rq_data_dir (struct request*) ;
 int sg_dma_address (struct scatterlist*) ;
 int sg_dma_len (struct scatterlist*) ;
 int sg_init_table (struct scatterlist*,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static blk_status_t carm_queue_rq(struct blk_mq_hw_ctx *hctx,
      const struct blk_mq_queue_data *bd)
{
 struct request_queue *q = hctx->queue;
 struct request *rq = bd->rq;
 struct carm_port *port = q->queuedata;
 struct carm_host *host = port->host;
 struct carm_request *crq = blk_mq_rq_to_pdu(rq);
 struct carm_msg_rw *msg;
 struct scatterlist *sg;
 int i, n_elem = 0, rc;
 unsigned int msg_size;
 u32 tmp;

 crq->n_elem = 0;
 sg_init_table(crq->sg, CARM_MAX_REQ_SG);

 blk_mq_start_request(rq);

 spin_lock_irq(&host->lock);
 if (req_op(rq) == REQ_OP_DRV_OUT)
  goto send_msg;


 sg = &crq->sg[0];
 n_elem = blk_rq_map_sg(q, rq, sg);
 if (n_elem <= 0)
  goto out_ioerr;


 n_elem = dma_map_sg(&host->pdev->dev, sg, n_elem, carm_rq_dir(rq));
 if (n_elem <= 0)
  goto out_ioerr;


 if (host->hw_sg_used >= CARM_MAX_HOST_SG - n_elem)
  goto out_resource;

 crq->n_elem = n_elem;
 host->hw_sg_used += n_elem;





 VPRINTK("build msg\n");
 msg = (struct carm_msg_rw *) carm_ref_msg(host, rq->tag);

 if (rq_data_dir(rq) == WRITE) {
  msg->type = CARM_MSG_WRITE;
  crq->msg_type = CARM_MSG_WRITE;
 } else {
  msg->type = CARM_MSG_READ;
  crq->msg_type = CARM_MSG_READ;
 }

 msg->id = port->port_no;
 msg->sg_count = n_elem;
 msg->sg_type = SGT_32BIT;
 msg->handle = cpu_to_le32(TAG_ENCODE(rq->tag));
 msg->lba = cpu_to_le32(blk_rq_pos(rq) & 0xffffffff);
 tmp = (blk_rq_pos(rq) >> 16) >> 16;
 msg->lba_high = cpu_to_le16( (u16) tmp );
 msg->lba_count = cpu_to_le16(blk_rq_sectors(rq));

 msg_size = sizeof(struct carm_msg_rw) - sizeof(msg->sg);
 for (i = 0; i < n_elem; i++) {
  struct carm_msg_sg *carm_sg = &msg->sg[i];
  carm_sg->start = cpu_to_le32(sg_dma_address(&crq->sg[i]));
  carm_sg->len = cpu_to_le32(sg_dma_len(&crq->sg[i]));
  msg_size += sizeof(struct carm_msg_sg);
 }

 rc = carm_lookup_bucket(msg_size);
 BUG_ON(rc < 0);
 crq->msg_bucket = (u32) rc;
send_msg:



 VPRINTK("send msg, tag == %u\n", rq->tag);
 rc = carm_send_msg(host, crq, rq->tag);
 if (rc) {
  host->hw_sg_used -= n_elem;
  goto out_resource;
 }

 spin_unlock_irq(&host->lock);
 return BLK_STS_OK;
out_resource:
 dma_unmap_sg(&host->pdev->dev, &crq->sg[0], n_elem, carm_rq_dir(rq));
 carm_push_q(host, q);
 spin_unlock_irq(&host->lock);
 return BLK_STS_DEV_RESOURCE;
out_ioerr:
 carm_round_robin(host);
 spin_unlock_irq(&host->lock);
 return BLK_STS_IOERR;
}
