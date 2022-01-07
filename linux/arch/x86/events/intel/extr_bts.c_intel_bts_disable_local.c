
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ event; } ;
struct bts_ctx {TYPE_1__ handle; int state; } ;


 scalar_t__ BTS_STATE_ACTIVE ;
 int BTS_STATE_INACTIVE ;
 scalar_t__ READ_ONCE (int ) ;
 int __bts_event_stop (scalar_t__,int ) ;
 int bts_ctx ;
 struct bts_ctx* this_cpu_ptr (int *) ;

void intel_bts_disable_local(void)
{
 struct bts_ctx *bts = this_cpu_ptr(&bts_ctx);





 if (READ_ONCE(bts->state) != BTS_STATE_ACTIVE)
  return;

 if (bts->handle.event)
  __bts_event_stop(bts->handle.event, BTS_STATE_INACTIVE);
}
