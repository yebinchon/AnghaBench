
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int mrb_value ;
struct TYPE_11__ {TYPE_2__* c; } ;
typedef TYPE_3__ mrb_state ;
typedef scalar_t__ mrb_int ;
struct TYPE_10__ {TYPE_1__* ci; int * stack; } ;
struct TYPE_9__ {scalar_t__ argc; scalar_t__ mid; } ;


 int E_ARGUMENT_ERROR ;
 scalar_t__ RARRAY_LEN (int ) ;
 scalar_t__ mrb_array_p (int ) ;
 int mrb_exc_new_str (TYPE_3__*,int ,int ) ;
 int mrb_exc_set (TYPE_3__*,int ) ;
 int mrb_fixnum_value (scalar_t__) ;
 int mrb_format (TYPE_3__*,char*,int ,int ,...) ;
 int mrb_sym2str (TYPE_3__*,scalar_t__) ;

__attribute__((used)) static void
argnum_error(mrb_state *mrb, mrb_int num)
{
  mrb_value exc;
  mrb_value str;
  mrb_int argc = mrb->c->ci->argc;

  if (argc < 0) {
    mrb_value args = mrb->c->stack[1];
    if (mrb_array_p(args)) {
      argc = RARRAY_LEN(args);
    }
  }
  if (mrb->c->ci->mid) {
    str = mrb_format(mrb, "'%S': wrong number of arguments (%S for %S)",
                  mrb_sym2str(mrb, mrb->c->ci->mid),
                  mrb_fixnum_value(argc), mrb_fixnum_value(num));
  }
  else {
    str = mrb_format(mrb, "wrong number of arguments (%S for %S)",
                     mrb_fixnum_value(argc), mrb_fixnum_value(num));
  }
  exc = mrb_exc_new_str(mrb, E_ARGUMENT_ERROR, str);
  mrb_exc_set(mrb, exc);
}
