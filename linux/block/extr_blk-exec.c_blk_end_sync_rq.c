
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {struct completion* end_io_data; } ;
struct completion {int dummy; } ;
typedef int blk_status_t ;


 int complete (struct completion*) ;

__attribute__((used)) static void blk_end_sync_rq(struct request *rq, blk_status_t error)
{
 struct completion *waiting = rq->end_io_data;

 rq->end_io_data = ((void*)0);





 complete(waiting);
}
