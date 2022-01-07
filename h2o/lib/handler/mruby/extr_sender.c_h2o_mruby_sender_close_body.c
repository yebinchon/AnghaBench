
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_14__ {int * exc; } ;
typedef TYPE_4__ mrb_state ;
struct TYPE_15__ {int body_obj; } ;
typedef TYPE_5__ h2o_mruby_sender_t ;
struct TYPE_16__ {TYPE_2__* ctx; TYPE_5__* sender; } ;
typedef TYPE_6__ h2o_mruby_generator_t ;
struct TYPE_11__ {int sym_close; } ;
struct TYPE_13__ {TYPE_1__ symbols; TYPE_4__* mrb; } ;
struct TYPE_12__ {TYPE_3__* shared; } ;


 int mrb_funcall_argv (TYPE_4__*,int ,int ,int ,int *) ;
 int mrb_gc_unregister (TYPE_4__*,int ) ;
 int mrb_nil_p (int ) ;
 int mrb_nil_value () ;
 scalar_t__ mrb_respond_to (TYPE_4__*,int ,int ) ;

void h2o_mruby_sender_close_body(h2o_mruby_generator_t *generator)
{
    h2o_mruby_sender_t *sender = generator->sender;
    mrb_state *mrb = generator->ctx->shared->mrb;

    if (!mrb_nil_p(sender->body_obj)) {

        if (mrb_respond_to(mrb, sender->body_obj, generator->ctx->shared->symbols.sym_close))
            mrb_funcall_argv(mrb, sender->body_obj, generator->ctx->shared->symbols.sym_close, 0, ((void*)0));
        mrb->exc = ((void*)0);
        mrb_gc_unregister(mrb, sender->body_obj);
        sender->body_obj = mrb_nil_value();
    }
}
