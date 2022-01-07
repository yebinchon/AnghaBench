
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct virtio_blk {int sg_elems; } ;
struct TYPE_2__ {int sense; } ;
struct virtblk_req {int sg; int sense; TYPE_1__ sreq; } ;
struct request {int dummy; } ;
struct blk_mq_tag_set {struct virtio_blk* driver_data; } ;


 struct virtblk_req* blk_mq_rq_to_pdu (struct request*) ;
 int sg_init_table (int ,int ) ;

__attribute__((used)) static int virtblk_init_request(struct blk_mq_tag_set *set, struct request *rq,
  unsigned int hctx_idx, unsigned int numa_node)
{
 struct virtio_blk *vblk = set->driver_data;
 struct virtblk_req *vbr = blk_mq_rq_to_pdu(rq);




 sg_init_table(vbr->sg, vblk->sg_elems);
 return 0;
}
