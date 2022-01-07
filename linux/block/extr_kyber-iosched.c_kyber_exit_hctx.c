
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kyber_hctx_data {struct kyber_hctx_data* kcqs; int * kcq_map; } ;
struct blk_mq_hw_ctx {struct kyber_hctx_data* sched_data; } ;


 int KYBER_NUM_DOMAINS ;
 int kfree (struct kyber_hctx_data*) ;
 int sbitmap_free (int *) ;

__attribute__((used)) static void kyber_exit_hctx(struct blk_mq_hw_ctx *hctx, unsigned int hctx_idx)
{
 struct kyber_hctx_data *khd = hctx->sched_data;
 int i;

 for (i = 0; i < KYBER_NUM_DOMAINS; i++)
  sbitmap_free(&khd->kcq_map[i]);
 kfree(khd->kcqs);
 kfree(hctx->sched_data);
}
