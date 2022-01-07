
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kyber_hctx_data {int * kcq_map; int * rqs; } ;
struct blk_mq_hw_ctx {struct kyber_hctx_data* sched_data; } ;


 int KYBER_NUM_DOMAINS ;
 int list_empty_careful (int *) ;
 scalar_t__ sbitmap_any_bit_set (int *) ;

__attribute__((used)) static bool kyber_has_work(struct blk_mq_hw_ctx *hctx)
{
 struct kyber_hctx_data *khd = hctx->sched_data;
 int i;

 for (i = 0; i < KYBER_NUM_DOMAINS; i++) {
  if (!list_empty_careful(&khd->rqs[i]) ||
      sbitmap_any_bit_set(&khd->kcq_map[i]))
   return 1;
 }

 return 0;
}
