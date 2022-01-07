
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct RProc {int dummy; } ;
struct TYPE_10__ {int object_class; } ;
typedef TYPE_1__ mrb_state ;
typedef int mrb_irep ;


 int MRB_PROC_SET_TARGET_CLASS (struct RProc*,int ) ;
 int mrb_gc_arena_restore (TYPE_1__*,int) ;
 int mrb_gc_arena_save (TYPE_1__*) ;
 int mrb_irep_decref (TYPE_1__*,int *) ;
 int mrb_obj_value (struct RProc*) ;
 struct RProc* mrb_proc_new (TYPE_1__*,int *) ;
 int mrb_top_self (TYPE_1__*) ;
 int mrb_yield_with_class (TYPE_1__*,int ,int ,int *,int ,int ) ;
 int replace_stop_with_return (TYPE_1__*,int *) ;

__attribute__((used)) static void
eval_load_irep(mrb_state *mrb, mrb_irep *irep)
{
  int ai;
  struct RProc *proc;




  proc = mrb_proc_new(mrb, irep);
  mrb_irep_decref(mrb, irep);
  MRB_PROC_SET_TARGET_CLASS(proc, mrb->object_class);

  ai = mrb_gc_arena_save(mrb);
  mrb_yield_with_class(mrb, mrb_obj_value(proc), 0, ((void*)0), mrb_top_self(mrb), mrb->object_class);
  mrb_gc_arena_restore(mrb, ai);
}
