
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int saved_end_io; } ;
struct request {TYPE_1__ flush; int end_io; int rq_flags; int biotail; int bio; } ;


 int RQF_FLUSH_SEQ ;

__attribute__((used)) static void blk_flush_restore_request(struct request *rq)
{





 rq->bio = rq->biotail;


 rq->rq_flags &= ~RQF_FLUSH_SEQ;
 rq->end_io = rq->flush.saved_end_io;
}
