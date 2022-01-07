
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfq_queue {int dummy; } ;
struct bfq_data {int dummy; } ;
typedef int sector_t ;


 struct bfq_queue* bfqq_find_close (struct bfq_data*,struct bfq_queue*,int ) ;

__attribute__((used)) static struct bfq_queue *bfq_find_close_cooperator(struct bfq_data *bfqd,
         struct bfq_queue *cur_bfqq,
         sector_t sector)
{
 struct bfq_queue *bfqq;
 bfqq = bfqq_find_close(bfqd, cur_bfqq, sector);
 if (!bfqq || bfqq == cur_bfqq)
  return ((void*)0);

 return bfqq;
}
