
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long long* times; int util_state; scalar_t__ tstamp; } ;
struct spu_context {TYPE_1__ stats; scalar_t__ spu; } ;
typedef enum spu_utilization_state { ____Placeholder_spu_utilization_state } spu_utilization_state ;


 unsigned long long NSEC_PER_MSEC ;
 scalar_t__ ktime_get_ns () ;

__attribute__((used)) static unsigned long long spufs_acct_time(struct spu_context *ctx,
  enum spu_utilization_state state)
{
 unsigned long long time = ctx->stats.times[state];
 if (ctx->spu && ctx->stats.util_state == state) {
  time += ktime_get_ns() - ctx->stats.tstamp;
 }

 return time / NSEC_PER_MSEC;
}
