
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int invol_ctx_switch; } ;
struct spu_context {TYPE_2__ stats; } ;
struct TYPE_4__ {int invol_ctx_switch; } ;
struct spu {int node; TYPE_1__ stats; int alloc_state; } ;
struct TYPE_6__ {int list_mutex; int nr_active; } ;


 int SPU_FREE ;
 TYPE_3__* cbe_spu_info ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spu_unbind_context (struct spu*,struct spu_context*) ;

__attribute__((used)) static void spu_unschedule(struct spu *spu, struct spu_context *ctx,
  int free_spu)
{
 int node = spu->node;

 mutex_lock(&cbe_spu_info[node].list_mutex);
 cbe_spu_info[node].nr_active--;
 if (free_spu)
  spu->alloc_state = SPU_FREE;
 spu_unbind_context(spu, ctx);
 ctx->stats.invol_ctx_switch++;
 spu->stats.invol_ctx_switch++;
 mutex_unlock(&cbe_spu_info[node].list_mutex);
}
