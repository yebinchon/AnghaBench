
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct virtblk_req {int dummy; } ;
struct TYPE_2__ {scalar_t__ bv_offset; int bv_page; } ;
struct request {int rq_flags; TYPE_1__ special_vec; } ;




 int RQF_SPECIAL_PAYLOAD ;
 int blk_mq_end_request (struct request*,int ) ;
 struct virtblk_req* blk_mq_rq_to_pdu (struct request*) ;
 int kfree (scalar_t__) ;
 scalar_t__ page_address (int ) ;
 int req_op (struct request*) ;
 int virtblk_result (struct virtblk_req*) ;
 int virtblk_scsi_request_done (struct request*) ;

__attribute__((used)) static inline void virtblk_request_done(struct request *req)
{
 struct virtblk_req *vbr = blk_mq_rq_to_pdu(req);

 if (req->rq_flags & RQF_SPECIAL_PAYLOAD) {
  kfree(page_address(req->special_vec.bv_page) +
        req->special_vec.bv_offset);
 }

 switch (req_op(req)) {
 case 129:
 case 128:
  virtblk_scsi_request_done(req);
  break;
 }

 blk_mq_end_request(req, virtblk_result(vbr));
}
