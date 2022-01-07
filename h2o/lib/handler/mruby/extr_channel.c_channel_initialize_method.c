
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct st_h2o_mruby_channel_context_t {int receivers; int * ctx; } ;
typedef int mrb_value ;
struct TYPE_8__ {TYPE_2__* ud; } ;
typedef TYPE_1__ mrb_state ;
struct TYPE_9__ {int * current_context; } ;
typedef TYPE_2__ h2o_mruby_shared_context_t ;


 int assert (int ) ;
 int channel_type ;
 struct st_h2o_mruby_channel_context_t* h2o_mem_alloc (int) ;
 int memset (struct st_h2o_mruby_channel_context_t*,int ,int) ;
 int mrb_ary_new (TYPE_1__*) ;
 int mrb_data_init (int ,struct st_h2o_mruby_channel_context_t*,int *) ;
 int mrb_gc_register (TYPE_1__*,int ) ;
 int mrb_intern_lit (TYPE_1__*,char*) ;
 int mrb_iv_set (TYPE_1__*,int ,int ,int ) ;

__attribute__((used)) static mrb_value channel_initialize_method(mrb_state *mrb, mrb_value self)
{
    h2o_mruby_shared_context_t *shared_ctx = mrb->ud;

    struct st_h2o_mruby_channel_context_t *ctx;
    ctx = h2o_mem_alloc(sizeof(*ctx));

    memset(ctx, 0, sizeof(*ctx));
    assert(shared_ctx->current_context != ((void*)0));
    ctx->ctx = shared_ctx->current_context;
    ctx->receivers = mrb_ary_new(mrb);
    mrb_gc_register(mrb, ctx->receivers);

    mrb_iv_set(mrb, self, mrb_intern_lit(mrb, "@queue"), mrb_ary_new(mrb));

    mrb_data_init(self, ctx, &channel_type);

    return self;
}
