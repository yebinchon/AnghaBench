
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ event; } ;
struct bts_ctx {TYPE_1__ handle; int state; } ;


 int BTS_STATE_ACTIVE ;
 int BTS_STATE_STOPPED ;
 int READ_ONCE (int ) ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int __bts_event_start (scalar_t__) ;
 int bts_ctx ;
 struct bts_ctx* this_cpu_ptr (int *) ;

void intel_bts_enable_local(void)
{
 struct bts_ctx *bts = this_cpu_ptr(&bts_ctx);
 int state = READ_ONCE(bts->state);






 if (WARN_ON_ONCE(state == BTS_STATE_ACTIVE))
  return;

 if (state == BTS_STATE_STOPPED)
  return;

 if (bts->handle.event)
  __bts_event_start(bts->handle.event);
}
