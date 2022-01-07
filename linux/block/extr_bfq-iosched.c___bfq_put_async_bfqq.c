
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfq_queue {int ref; } ;
struct bfq_data {int root_group; } ;


 int bfq_bfqq_move (struct bfq_data*,struct bfq_queue*,int ) ;
 int bfq_log (struct bfq_data*,char*,struct bfq_queue*) ;
 int bfq_log_bfqq (struct bfq_data*,struct bfq_queue*,char*,struct bfq_queue*,int ) ;
 int bfq_put_queue (struct bfq_queue*) ;

__attribute__((used)) static void __bfq_put_async_bfqq(struct bfq_data *bfqd,
     struct bfq_queue **bfqq_ptr)
{
 struct bfq_queue *bfqq = *bfqq_ptr;

 bfq_log(bfqd, "put_async_bfqq: %p", bfqq);
 if (bfqq) {
  bfq_bfqq_move(bfqd, bfqq, bfqd->root_group);

  bfq_log_bfqq(bfqd, bfqq, "put_async_bfqq: putting %p, %d",
        bfqq, bfqq->ref);
  bfq_put_queue(bfqq);
  *bfqq_ptr = ((void*)0);
 }
}
