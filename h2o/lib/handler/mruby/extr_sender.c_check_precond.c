
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int mrb_value ;
typedef int mrb_state ;
struct TYPE_5__ {TYPE_1__* req; } ;
typedef TYPE_2__ h2o_mruby_generator_t ;
struct TYPE_4__ {int * _generator; } ;


 int E_RUNTIME_ERROR ;
 int mrb_exc_new_str_lit (int *,int ,char*) ;
 int mrb_nil_value () ;

__attribute__((used)) static mrb_value check_precond(mrb_state *mrb, h2o_mruby_generator_t *generator)
{
    if (generator == ((void*)0) || generator->req == ((void*)0))
        return mrb_exc_new_str_lit(mrb, E_RUNTIME_ERROR, "downstream HTTP closed");
    if (generator->req->_generator == ((void*)0))
        return mrb_exc_new_str_lit(mrb, E_RUNTIME_ERROR, "cannot send chunk before sending headers");
    return mrb_nil_value();
}
