
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int mrb_value ;
struct TYPE_10__ {TYPE_2__* c; } ;
typedef TYPE_3__ mrb_state ;
typedef int mrb_int ;
struct TYPE_9__ {TYPE_1__* ci; } ;
struct TYPE_8__ {int target_class; } ;


 int E_ARGUMENT_ERROR ;
 int mrb_class_ptr (int ) ;
 int mrb_get_args (TYPE_3__*,char*,int const**,int *,int *) ;
 scalar_t__ mrb_nil_p (int ) ;
 int mrb_raise (TYPE_3__*,int ,char*) ;
 int mrb_yield_cont (TYPE_3__*,int ,int ,int ,int const*) ;

__attribute__((used)) static mrb_value
mrb_mod_module_exec(mrb_state *mrb, mrb_value self)
{
  const mrb_value *argv;
  mrb_int argc;
  mrb_value blk;

  mrb_get_args(mrb, "*&", &argv, &argc, &blk);

  if (mrb_nil_p(blk)) {
    mrb_raise(mrb, E_ARGUMENT_ERROR, "no block given");
  }

  mrb->c->ci->target_class = mrb_class_ptr(self);
  return mrb_yield_cont(mrb, blk, self, argc, argv);
}
