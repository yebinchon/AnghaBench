
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int q; } ;


 scalar_t__ REQ_OP_DISCARD ;
 int queue_max_discard_segments (int ) ;
 scalar_t__ req_op (struct request*) ;

__attribute__((used)) static inline bool blk_discard_mergable(struct request *req)
{
 if (req_op(req) == REQ_OP_DISCARD &&
     queue_max_discard_segments(req->q) > 1)
  return 1;
 return 0;
}
