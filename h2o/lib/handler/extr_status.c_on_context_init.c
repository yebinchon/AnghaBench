
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct st_h2o_status_context_t {int receiver; TYPE_1__* ctx; } ;
struct TYPE_6__ {scalar_t__ size; int ** entries; } ;
struct st_h2o_root_status_handler_t {int super; TYPE_3__ receivers; } ;
typedef int h2o_handler_t ;
struct TYPE_5__ {int queue; } ;
typedef TYPE_1__ h2o_context_t ;


 int h2o_context_set_handler_context (TYPE_1__*,int *,struct st_h2o_status_context_t*) ;
 struct st_h2o_status_context_t* h2o_mem_alloc (int) ;
 int h2o_multithread_register_receiver (int ,int *,int ) ;
 int h2o_vector_reserve (int *,TYPE_3__*,scalar_t__) ;
 int on_collect_notify ;

__attribute__((used)) static void on_context_init(h2o_handler_t *_self, h2o_context_t *ctx)
{
    struct st_h2o_root_status_handler_t *self = (void *)_self;
    struct st_h2o_status_context_t *status_ctx = h2o_mem_alloc(sizeof(*status_ctx));

    status_ctx->ctx = ctx;
    h2o_multithread_register_receiver(ctx->queue, &status_ctx->receiver, on_collect_notify);

    h2o_vector_reserve(((void*)0), &self->receivers, self->receivers.size + 1);
    self->receivers.entries[self->receivers.size++] = &status_ctx->receiver;

    h2o_context_set_handler_context(ctx, &self->super, status_ctx);
}
