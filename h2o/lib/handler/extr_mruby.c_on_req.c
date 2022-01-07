
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_8__ ;
typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_13__ ;


typedef int mrb_value ;
struct TYPE_21__ {int pool; TYPE_1__* conn; } ;
typedef TYPE_4__ h2o_req_t ;
struct TYPE_22__ {int mrb; int constants; } ;
typedef TYPE_5__ h2o_mruby_shared_context_t ;
struct TYPE_23__ {int super; } ;
typedef TYPE_6__ h2o_mruby_handler_t ;
struct TYPE_20__ {int generator; } ;
struct TYPE_19__ {int * stop; int * proceed; } ;
struct TYPE_24__ {TYPE_3__ refs; TYPE_13__* error_stream; int * sender; int rack_input; TYPE_8__* ctx; TYPE_4__* req; TYPE_2__ super; } ;
typedef TYPE_7__ h2o_mruby_generator_t ;
struct TYPE_25__ {int proc; } ;
typedef TYPE_8__ h2o_mruby_context_t ;
typedef int h2o_handler_t ;
struct TYPE_18__ {int ctx; } ;
struct TYPE_17__ {TYPE_7__* generator; TYPE_8__* ctx; } ;


 int H2O_MRUBY_GENERATOR_CLASS ;
 int build_env (TYPE_7__*) ;
 int generator_type ;
 TYPE_5__* get_shared_context (int ) ;
 TYPE_8__* h2o_context_get_handler_context (int ,int *) ;
 TYPE_13__* h2o_mem_alloc (int) ;
 TYPE_7__* h2o_mem_alloc_shared (int *,int,int ) ;
 int h2o_mruby_create_data_instance (int ,int ,TYPE_7__*,int *) ;
 int h2o_mruby_run_fiber (TYPE_8__*,int ,int ,int*) ;
 int mrb_ary_entry (int ,int ) ;
 int mrb_ary_new (int ) ;
 int mrb_ary_set (int ,int ,int,int ) ;
 int mrb_gc_arena_restore (int ,int) ;
 int mrb_gc_arena_save (int ) ;
 int mrb_nil_value () ;
 int on_generator_dispose ;

__attribute__((used)) static int on_req(h2o_handler_t *_handler, h2o_req_t *req)
{
    h2o_mruby_handler_t *handler = (void *)_handler;
    h2o_mruby_shared_context_t *shared = get_shared_context(req->conn->ctx);
    int gc_arena = mrb_gc_arena_save(shared->mrb);

    h2o_mruby_context_t *ctx = h2o_context_get_handler_context(req->conn->ctx, &handler->super);

    h2o_mruby_generator_t *generator = h2o_mem_alloc_shared(&req->pool, sizeof(*generator), on_generator_dispose);
    generator->super.proceed = ((void*)0);
    generator->super.stop = ((void*)0);
    generator->req = req;
    generator->ctx = ctx;
    generator->rack_input = mrb_nil_value();
    generator->sender = ((void*)0);

    generator->error_stream = h2o_mem_alloc(sizeof(*generator->error_stream));
    generator->error_stream->ctx = ctx;
    generator->error_stream->generator = generator;

    mrb_value gen = h2o_mruby_create_data_instance(shared->mrb, mrb_ary_entry(shared->constants, H2O_MRUBY_GENERATOR_CLASS),
                                                   generator, &generator_type);
    generator->refs.generator = gen;

    mrb_value env = build_env(generator);

    mrb_value args = mrb_ary_new(shared->mrb);
    mrb_ary_set(shared->mrb, args, 0, env);
    mrb_ary_set(shared->mrb, args, 1, gen);

    int is_delegate = 0;
    h2o_mruby_run_fiber(ctx, ctx->proc, args, &is_delegate);

    mrb_gc_arena_restore(shared->mrb, gc_arena);
    if (is_delegate)
        return -1;
    return 0;
}
