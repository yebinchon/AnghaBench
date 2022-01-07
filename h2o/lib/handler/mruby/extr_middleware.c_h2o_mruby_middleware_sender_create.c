
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct st_mruby_subreq_t {int dummy; } ;
typedef int mrb_value ;
struct TYPE_10__ {int * exc; } ;
typedef TYPE_3__ mrb_state ;
typedef int h2o_mruby_sender_t ;
struct TYPE_11__ {TYPE_2__* ctx; } ;
typedef TYPE_4__ h2o_mruby_generator_t ;
struct TYPE_9__ {TYPE_1__* shared; } ;
struct TYPE_8__ {TYPE_3__* mrb; } ;


 int app_input_stream_type ;
 int assert (int ) ;
 int * create_sender (TYPE_4__*,struct st_mruby_subreq_t*,int ) ;
 struct st_mruby_subreq_t* mrb_data_check_get_ptr (TYPE_3__*,int ,int *) ;

h2o_mruby_sender_t *h2o_mruby_middleware_sender_create(h2o_mruby_generator_t *generator, mrb_value body)
{
    mrb_state *mrb = generator->ctx->shared->mrb;
    struct st_mruby_subreq_t *subreq;

    assert(mrb->exc == ((void*)0));

    if ((subreq = mrb_data_check_get_ptr(mrb, body, &app_input_stream_type)) == ((void*)0))
        return ((void*)0);

    return create_sender(generator, subreq, body);
}
