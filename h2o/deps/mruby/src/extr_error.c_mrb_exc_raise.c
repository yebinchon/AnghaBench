
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int mrb_value ;
struct TYPE_7__ {int jmp; int eException_class; } ;
typedef TYPE_1__ mrb_state ;


 int E_TYPE_ERROR ;
 int MRB_THROW (int ) ;
 int abort () ;
 int mrb_exc_set (TYPE_1__*,int ) ;
 int mrb_obj_is_kind_of (TYPE_1__*,int ,int ) ;
 int mrb_p (TYPE_1__*,int ) ;
 int mrb_raise (TYPE_1__*,int ,char*) ;

void
mrb_exc_raise(mrb_state *mrb, mrb_value exc)
{
  if (!mrb_obj_is_kind_of(mrb, exc, mrb->eException_class)) {
    mrb_raise(mrb, E_TYPE_ERROR, "exception object expected");
  }
  mrb_exc_set(mrb, exc);
  if (!mrb->jmp) {
    mrb_p(mrb, exc);
    abort();
  }
  MRB_THROW(mrb->jmp);
}
