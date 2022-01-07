
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct st_mruby_subreq_t {int dummy; } ;
typedef int mrb_value ;
typedef int mrb_state ;
typedef int * h2o_mruby_send_response_callback_t ;
struct TYPE_5__ {TYPE_1__* shared; } ;
typedef TYPE_2__ h2o_mruby_context_t ;
struct TYPE_4__ {int * mrb; } ;


 int app_request_type ;
 struct st_mruby_subreq_t* mrb_data_check_get_ptr (int *,int ,int *) ;
 int * send_response_callback ;

h2o_mruby_send_response_callback_t h2o_mruby_middleware_get_send_response_callback(h2o_mruby_context_t *ctx, mrb_value resp)
{
    mrb_state *mrb = ctx->shared->mrb;
    struct st_mruby_subreq_t *subreq;
    if ((subreq = mrb_data_check_get_ptr(mrb, resp, &app_request_type)) == ((void*)0))
        return ((void*)0);
    return send_response_callback;
}
