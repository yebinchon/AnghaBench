
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int mrb_state ;
struct TYPE_7__ {int * gray_list; int atomic_gray_list; int generational; } ;
typedef TYPE_1__ mrb_gc ;
typedef int mrb_bool ;


 int FALSE ;
 int MRB_GC_STATE_ROOT ;
 int incremental_gc_until (int *,TYPE_1__*,int ) ;
 int is_generational (TYPE_1__*) ;
 scalar_t__ is_major_gc (TYPE_1__*) ;
 int mrb_assert (int ) ;
 int prepare_incremental_sweep (int *,TYPE_1__*) ;

__attribute__((used)) static void
clear_all_old(mrb_state *mrb, mrb_gc *gc)
{
  mrb_bool origin_mode = gc->generational;

  mrb_assert(is_generational(gc));
  if (is_major_gc(gc)) {

    incremental_gc_until(mrb, gc, MRB_GC_STATE_ROOT);
  }



  gc->generational = FALSE;
  prepare_incremental_sweep(mrb, gc);
  incremental_gc_until(mrb, gc, MRB_GC_STATE_ROOT);
  gc->generational = origin_mode;


  gc->atomic_gray_list = gc->gray_list = ((void*)0);
}
