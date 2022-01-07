
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;


 int E_RUNTIME_ERROR ;
 int mrb_exc_new_str_lit (int *,int ,char*) ;

__attribute__((used)) static mrb_value create_already_consumed_error(mrb_state *mrb)
{
    return mrb_exc_new_str_lit(mrb, E_RUNTIME_ERROR, "http response body is already consumed");
}
