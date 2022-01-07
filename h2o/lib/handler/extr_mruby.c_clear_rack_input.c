
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int rack_input; TYPE_2__* ctx; } ;
typedef TYPE_3__ h2o_mruby_generator_t ;
struct TYPE_6__ {TYPE_1__* shared; } ;
struct TYPE_5__ {int mrb; } ;


 int mrb_input_stream_set_data (int ,int ,int *,int,int ,int *,int *) ;
 int mrb_nil_p (int ) ;

__attribute__((used)) static void clear_rack_input(h2o_mruby_generator_t *generator)
{
    if (!mrb_nil_p(generator->rack_input))
        mrb_input_stream_set_data(generator->ctx->shared->mrb, generator->rack_input, ((void*)0), -1, 0, ((void*)0), ((void*)0));
}
