
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfq_queue {int dummy; } ;
struct bfq_io_cq {struct bfq_queue** bfqq; } ;



struct bfq_queue *bic_to_bfqq(struct bfq_io_cq *bic, bool is_sync)
{
 return bic->bfqq[is_sync];
}
