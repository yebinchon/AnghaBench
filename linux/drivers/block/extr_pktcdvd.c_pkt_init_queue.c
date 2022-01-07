
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {struct pktcdvd_device* queuedata; } ;
struct pktcdvd_device {TYPE_1__* disk; } ;
struct TYPE_2__ {struct request_queue* queue; } ;


 int CD_FRAMESIZE ;
 int PACKET_MAX_SECTORS ;
 int blk_queue_logical_block_size (struct request_queue*,int ) ;
 int blk_queue_make_request (struct request_queue*,int ) ;
 int blk_queue_max_hw_sectors (struct request_queue*,int ) ;
 int pkt_make_request ;

__attribute__((used)) static void pkt_init_queue(struct pktcdvd_device *pd)
{
 struct request_queue *q = pd->disk->queue;

 blk_queue_make_request(q, pkt_make_request);
 blk_queue_logical_block_size(q, CD_FRAMESIZE);
 blk_queue_max_hw_sectors(q, PACKET_MAX_SECTORS);
 q->queuedata = pd;
}
