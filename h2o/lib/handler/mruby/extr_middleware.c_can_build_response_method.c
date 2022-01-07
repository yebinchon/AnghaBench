
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_mruby_subreq_t {scalar_t__ state; } ;
typedef int mrb_value ;
typedef int mrb_state ;


 int E_ARGUMENT_ERROR ;
 scalar_t__ INITIAL ;
 int app_request_type ;
 int mrb_bool_value (int) ;
 struct st_mruby_subreq_t* mrb_data_check_get_ptr (int *,int ,int *) ;
 int mrb_raise (int *,int ,char*) ;

__attribute__((used)) static mrb_value can_build_response_method(mrb_state *mrb, mrb_value self)
{
    struct st_mruby_subreq_t *subreq = mrb_data_check_get_ptr(mrb, self, &app_request_type);
    if (subreq == ((void*)0))
        mrb_raise(mrb, E_ARGUMENT_ERROR, "AppRequest#_can_build_response? wrong self");
    return mrb_bool_value(subreq->state != INITIAL);
}
