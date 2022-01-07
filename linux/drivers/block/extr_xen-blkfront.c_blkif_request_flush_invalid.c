
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int cmd_flags; } ;
struct blkfront_info {int feature_fua; int feature_flush; } ;


 int REQ_FUA ;
 scalar_t__ REQ_OP_FLUSH ;
 scalar_t__ blk_rq_is_passthrough (struct request*) ;
 scalar_t__ req_op (struct request*) ;

__attribute__((used)) static inline bool blkif_request_flush_invalid(struct request *req,
            struct blkfront_info *info)
{
 return (blk_rq_is_passthrough(req) ||
  ((req_op(req) == REQ_OP_FLUSH) &&
   !info->feature_flush) ||
  ((req->cmd_flags & REQ_FUA) &&
   !info->feature_fua));
}
