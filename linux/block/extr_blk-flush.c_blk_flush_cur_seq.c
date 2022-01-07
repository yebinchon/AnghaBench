
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int seq; } ;
struct request {TYPE_1__ flush; } ;


 int ffz (int ) ;

__attribute__((used)) static unsigned int blk_flush_cur_seq(struct request *rq)
{
 return 1 << ffz(rq->flush.seq);
}
