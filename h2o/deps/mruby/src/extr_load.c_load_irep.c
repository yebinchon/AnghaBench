
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct RProc {int * c; } ;
struct TYPE_3__ {scalar_t__ no_exec; scalar_t__ dump_result; } ;
typedef TYPE_1__ mrbc_context ;
typedef int mrb_value ;
typedef int mrb_state ;
typedef int mrb_irep ;


 int irep_error (int *) ;
 int mrb_codedump_all (int *,struct RProc*) ;
 int mrb_irep_decref (int *,int *) ;
 int mrb_nil_value () ;
 int mrb_obj_value (struct RProc*) ;
 struct RProc* mrb_proc_new (int *,int *) ;
 int mrb_top_run (int *,struct RProc*,int ,int ) ;
 int mrb_top_self (int *) ;

__attribute__((used)) static mrb_value
load_irep(mrb_state *mrb, mrb_irep *irep, mrbc_context *c)
{
  struct RProc *proc;

  if (!irep) {
    irep_error(mrb);
    return mrb_nil_value();
  }
  proc = mrb_proc_new(mrb, irep);
  proc->c = ((void*)0);
  mrb_irep_decref(mrb, irep);
  if (c && c->dump_result) mrb_codedump_all(mrb, proc);
  if (c && c->no_exec) return mrb_obj_value(proc);
  return mrb_top_run(mrb, proc, mrb_top_self(mrb), 0);
}
