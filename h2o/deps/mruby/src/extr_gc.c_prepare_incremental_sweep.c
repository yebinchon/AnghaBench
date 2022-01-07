
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int mrb_state ;
struct TYPE_3__ {int live; int live_after_mark; int heaps; int sweeps; int state; } ;
typedef TYPE_1__ mrb_gc ;


 int MRB_GC_STATE_SWEEP ;

__attribute__((used)) static void
prepare_incremental_sweep(mrb_state *mrb, mrb_gc *gc)
{
  gc->state = MRB_GC_STATE_SWEEP;
  gc->sweeps = gc->heaps;
  gc->live_after_mark = gc->live;
}
