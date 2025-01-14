
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
struct request {int tag; } ;
struct carm_request {scalar_t__ msg_bucket; void* msg_subtype; void* msg_type; } ;
struct carm_msg_ioctl {void* data_addr; void* handle; scalar_t__ array_id; void* subtype; void* type; } ;
struct carm_host {scalar_t__ state; int lock; int oob_q; } ;
struct carm_array_info {int dummy; } ;
typedef scalar_t__ dma_addr_t ;


 int BUG_ON (int) ;
 void* CARM_ARRAY_INFO ;
 void* CARM_MSG_ARRAY ;
 int DPRINTK (char*,int ) ;
 int ENOMEM ;
 scalar_t__ HST_DEV_SCAN ;
 scalar_t__ HST_DEV_SCAN_START ;
 scalar_t__ HST_ERROR ;
 scalar_t__ IS_ERR (struct request*) ;
 int REQ_OP_DRV_OUT ;
 scalar_t__ TAG_ENCODE (int ) ;
 int assert (int) ;
 int blk_execute_rq_nowait (int ,int *,struct request*,int,int *) ;
 struct request* blk_mq_alloc_request (int ,int ,int ) ;
 struct carm_request* blk_mq_rq_to_pdu (struct request*) ;
 int carm_lookup_bucket (int) ;
 struct carm_msg_ioctl* carm_ref_msg (struct carm_host*,int ) ;
 scalar_t__ carm_ref_msg_dma (struct carm_host*,int ) ;
 void* cpu_to_le32 (scalar_t__) ;
 int memset (struct carm_msg_ioctl*,int ,int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int carm_array_info (struct carm_host *host, unsigned int array_idx)
{
 struct carm_msg_ioctl *ioc;
 u32 msg_data;
 dma_addr_t msg_dma;
 struct carm_request *crq;
 struct request *rq;
 int rc;

 rq = blk_mq_alloc_request(host->oob_q, REQ_OP_DRV_OUT, 0);
 if (IS_ERR(rq)) {
  rc = -ENOMEM;
  goto err_out;
 }
 crq = blk_mq_rq_to_pdu(rq);

 ioc = carm_ref_msg(host, rq->tag);
 msg_dma = carm_ref_msg_dma(host, rq->tag);
 msg_data = (u32) (msg_dma + sizeof(struct carm_array_info));

 crq->msg_type = CARM_MSG_ARRAY;
 crq->msg_subtype = CARM_ARRAY_INFO;
 rc = carm_lookup_bucket(sizeof(struct carm_msg_ioctl) +
    sizeof(struct carm_array_info));
 BUG_ON(rc < 0);
 crq->msg_bucket = (u32) rc;

 memset(ioc, 0, sizeof(*ioc));
 ioc->type = CARM_MSG_ARRAY;
 ioc->subtype = CARM_ARRAY_INFO;
 ioc->array_id = (u8) array_idx;
 ioc->handle = cpu_to_le32(TAG_ENCODE(rq->tag));
 ioc->data_addr = cpu_to_le32(msg_data);

 spin_lock_irq(&host->lock);
 assert(host->state == HST_DEV_SCAN_START ||
        host->state == HST_DEV_SCAN);
 spin_unlock_irq(&host->lock);

 DPRINTK("blk_execute_rq_nowait, tag == %u\n", rq->tag);
 blk_execute_rq_nowait(host->oob_q, ((void*)0), rq, 1, ((void*)0));

 return 0;

err_out:
 spin_lock_irq(&host->lock);
 host->state = HST_ERROR;
 spin_unlock_irq(&host->lock);
 return rc;
}
