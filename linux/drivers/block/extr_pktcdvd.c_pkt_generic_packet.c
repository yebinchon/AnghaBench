
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct request_queue {int dummy; } ;
struct request {int timeout; int q; int rq_flags; } ;
struct pktcdvd_device {TYPE_2__* bdev; } ;
struct packet_command {scalar_t__ data_direction; scalar_t__ quiet; int * cmd; int buflen; int buffer; } ;
struct TYPE_4__ {int bd_disk; } ;
struct TYPE_3__ {scalar_t__ result; int cmd; int cmd_len; } ;


 int CDROM_PACKET_SIZE ;
 scalar_t__ CGC_DATA_WRITE ;
 int COMMAND_SIZE (int ) ;
 int EIO ;
 int GFP_NOIO ;
 int HZ ;
 scalar_t__ IS_ERR (struct request*) ;
 int PTR_ERR (struct request*) ;
 int REQ_OP_SCSI_IN ;
 int REQ_OP_SCSI_OUT ;
 int RQF_QUIET ;
 struct request_queue* bdev_get_queue (TYPE_2__*) ;
 int blk_execute_rq (int ,int ,struct request*,int ) ;
 struct request* blk_get_request (struct request_queue*,int ,int ) ;
 int blk_put_request (struct request*) ;
 int blk_rq_map_kern (struct request_queue*,struct request*,int ,int ,int ) ;
 int memcpy (int ,int *,int ) ;
 TYPE_1__* scsi_req (struct request*) ;

__attribute__((used)) static int pkt_generic_packet(struct pktcdvd_device *pd, struct packet_command *cgc)
{
 struct request_queue *q = bdev_get_queue(pd->bdev);
 struct request *rq;
 int ret = 0;

 rq = blk_get_request(q, (cgc->data_direction == CGC_DATA_WRITE) ?
        REQ_OP_SCSI_OUT : REQ_OP_SCSI_IN, 0);
 if (IS_ERR(rq))
  return PTR_ERR(rq);

 if (cgc->buflen) {
  ret = blk_rq_map_kern(q, rq, cgc->buffer, cgc->buflen,
          GFP_NOIO);
  if (ret)
   goto out;
 }

 scsi_req(rq)->cmd_len = COMMAND_SIZE(cgc->cmd[0]);
 memcpy(scsi_req(rq)->cmd, cgc->cmd, CDROM_PACKET_SIZE);

 rq->timeout = 60*HZ;
 if (cgc->quiet)
  rq->rq_flags |= RQF_QUIET;

 blk_execute_rq(rq->q, pd->bdev->bd_disk, rq, 0);
 if (scsi_req(rq)->result)
  ret = -EIO;
out:
 blk_put_request(rq);
 return ret;
}
