
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spu_context {int object_id; } ;
struct spu {int dummy; } ;


 int blocking_notifier_call_chain (int *,int ,struct spu*) ;
 int spu_switch_notifier ;

void spu_switch_notify(struct spu *spu, struct spu_context *ctx)
{
 blocking_notifier_call_chain(&spu_switch_notifier,
         ctx ? ctx->object_id : 0, spu);
}
