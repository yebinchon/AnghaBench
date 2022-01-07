
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfq_queue {int dummy; } ;
struct bfq_data {int dummy; } ;


 int __bfq_set_in_service_queue (struct bfq_data*,struct bfq_queue*) ;
 struct bfq_queue* bfq_get_next_queue (struct bfq_data*) ;

__attribute__((used)) static struct bfq_queue *bfq_set_in_service_queue(struct bfq_data *bfqd)
{
 struct bfq_queue *bfqq = bfq_get_next_queue(bfqd);

 __bfq_set_in_service_queue(bfqd, bfqq);
 return bfqq;
}
