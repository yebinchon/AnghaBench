
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned long long tstamp; int util_state; long long* times; } ;
struct spu_context {TYPE_1__ stats; struct spu* spu; int state_mutex; } ;
struct TYPE_5__ {long long* times; int util_state; unsigned long long tstamp; } ;
struct spu {int node; TYPE_2__ stats; } ;
typedef enum spu_utilization_state { ____Placeholder_spu_utilization_state } spu_utilization_state ;
struct TYPE_6__ {int busy_spus; } ;


 int SPU_UTIL_USER ;
 int WARN_ON (int) ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 TYPE_3__* cbe_spu_info ;
 unsigned long long ktime_get_ns () ;
 int mutex_is_locked (int *) ;

void spuctx_switch_state(struct spu_context *ctx,
  enum spu_utilization_state new_state)
{
 unsigned long long curtime;
 signed long long delta;
 struct spu *spu;
 enum spu_utilization_state old_state;
 int node;

 curtime = ktime_get_ns();
 delta = curtime - ctx->stats.tstamp;

 WARN_ON(!mutex_is_locked(&ctx->state_mutex));
 WARN_ON(delta < 0);

 spu = ctx->spu;
 old_state = ctx->stats.util_state;
 ctx->stats.util_state = new_state;
 ctx->stats.tstamp = curtime;




 if (spu) {
  ctx->stats.times[old_state] += delta;
  spu->stats.times[old_state] += delta;
  spu->stats.util_state = new_state;
  spu->stats.tstamp = curtime;
  node = spu->node;
  if (old_state == SPU_UTIL_USER)
   atomic_dec(&cbe_spu_info[node].busy_spus);
  if (new_state == SPU_UTIL_USER)
   atomic_inc(&cbe_spu_info[node].busy_spus);
 }
}
