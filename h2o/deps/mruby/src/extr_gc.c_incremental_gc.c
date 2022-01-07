
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int mrb_state ;
struct TYPE_9__ {int state; int gray_list; } ;
typedef TYPE_1__ mrb_gc ;





 int final_marking_phase (int *,TYPE_1__*) ;
 int flip_white_part (TYPE_1__*) ;
 size_t incremental_marking_phase (int *,TYPE_1__*,size_t) ;
 size_t incremental_sweep_phase (int *,TYPE_1__*,size_t) ;
 int mrb_assert (int ) ;
 int prepare_incremental_sweep (int *,TYPE_1__*) ;
 int root_scan_phase (int *,TYPE_1__*) ;

__attribute__((used)) static size_t
incremental_gc(mrb_state *mrb, mrb_gc *gc, size_t limit)
{
  switch (gc->state) {
  case 129:
    root_scan_phase(mrb, gc);
    gc->state = 130;
    flip_white_part(gc);
    return 0;
  case 130:
    if (gc->gray_list) {
      return incremental_marking_phase(mrb, gc, limit);
    }
    else {
      final_marking_phase(mrb, gc);
      prepare_incremental_sweep(mrb, gc);
      return 0;
    }
  case 128: {
     size_t tried_sweep = 0;
     tried_sweep = incremental_sweep_phase(mrb, gc, limit);
     if (tried_sweep == 0)
       gc->state = 129;
     return tried_sweep;
  }
  default:

    mrb_assert(0);
    return 0;
  }
}
