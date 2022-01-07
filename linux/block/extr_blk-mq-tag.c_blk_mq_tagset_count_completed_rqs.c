
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int dummy; } ;


 scalar_t__ blk_mq_request_completed (struct request*) ;

__attribute__((used)) static bool blk_mq_tagset_count_completed_rqs(struct request *rq,
  void *data, bool reserved)
{
 unsigned *count = data;

 if (blk_mq_request_completed(rq))
  (*count)++;
 return 1;
}
