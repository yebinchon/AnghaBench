
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_7__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef void* mrb_value ;
typedef int mrb_state ;
struct TYPE_8__ {int super; } ;
typedef TYPE_1__ h2o_mruby_handler_t ;
struct TYPE_9__ {void* proc; TYPE_7__* shared; void* resumers; void* blocking_reqs; TYPE_1__* handler; } ;
typedef TYPE_2__ h2o_mruby_context_t ;
typedef int h2o_handler_t ;
typedef int h2o_context_t ;
struct TYPE_10__ {int * mrb; } ;


 int assert (int ) ;
 TYPE_7__* get_shared_context (int *) ;
 int h2o_context_set_handler_context (int *,int *,TYPE_2__*) ;
 TYPE_2__* h2o_mem_alloc (int) ;
 int h2o_mruby_assert (int *) ;
 int h2o_mruby_run_fiber (TYPE_2__*,void*,int ,int *) ;
 int mrb_array_p (void*) ;
 void* mrb_ary_entry (void*,int) ;
 void* mrb_ary_new (int *) ;
 int mrb_gc_arena_restore (int *,int) ;
 int mrb_gc_arena_save (int *) ;
 int mrb_gc_protect (int *,void*) ;
 int mrb_nil_value () ;
 void* prepare_fibers (TYPE_2__*) ;

__attribute__((used)) static void on_context_init(h2o_handler_t *_handler, h2o_context_t *ctx)
{
    h2o_mruby_handler_t *handler = (void *)_handler;
    h2o_mruby_context_t *handler_ctx = h2o_mem_alloc(sizeof(*handler_ctx));

    handler_ctx->handler = handler;
    handler_ctx->shared = get_shared_context(ctx);

    mrb_state *mrb = handler_ctx->shared->mrb;

    handler_ctx->blocking_reqs = mrb_ary_new(mrb);
    handler_ctx->resumers = mrb_ary_new(mrb);


    int arena = mrb_gc_arena_save(mrb);

    mrb_value fibers = prepare_fibers(handler_ctx);
    assert(mrb_array_p(fibers));

    handler_ctx->proc = mrb_ary_entry(fibers, 0);


    mrb_value configurator = mrb_ary_entry(fibers, 1);
    h2o_mruby_run_fiber(handler_ctx, configurator, mrb_nil_value(), ((void*)0));
    h2o_mruby_assert(handler_ctx->shared->mrb);

    mrb_gc_arena_restore(mrb, arena);
    mrb_gc_protect(mrb, handler_ctx->proc);
    mrb_gc_protect(mrb, configurator);

    h2o_context_set_handler_context(ctx, &handler->super, handler_ctx);
}
