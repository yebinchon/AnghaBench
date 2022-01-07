
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int rq_flags; scalar_t__ rq_disk; } ;


 int RQF_IO_STAT ;
 int blk_rq_is_passthrough (struct request*) ;

__attribute__((used)) static inline bool blk_do_io_stat(struct request *rq)
{
 return rq->rq_disk &&
        (rq->rq_flags & RQF_IO_STAT) &&
  !blk_rq_is_passthrough(rq);
}
