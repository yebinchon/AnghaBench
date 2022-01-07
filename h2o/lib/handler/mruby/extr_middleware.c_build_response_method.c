
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int input_stream; } ;
struct st_mruby_subreq_t {TYPE_1__ refs; } ;
typedef int mrb_value ;
typedef int mrb_state ;


 int E_ARGUMENT_ERROR ;
 int app_request_type ;
 int build_app_response (struct st_mruby_subreq_t*) ;
 int mrb_ary_entry (int ,int) ;
 struct st_mruby_subreq_t* mrb_data_check_get_ptr (int *,int ,int *) ;
 int mrb_raise (int *,int ,char*) ;

__attribute__((used)) static mrb_value build_response_method(mrb_state *mrb, mrb_value self)
{
    struct st_mruby_subreq_t *subreq = mrb_data_check_get_ptr(mrb, self, &app_request_type);
    if (subreq == ((void*)0))
        mrb_raise(mrb, E_ARGUMENT_ERROR, "AppRequest#build_response wrong self");

    mrb_value resp = build_app_response(subreq);
    subreq->refs.input_stream = mrb_ary_entry(resp, 2);
    return resp;
}
