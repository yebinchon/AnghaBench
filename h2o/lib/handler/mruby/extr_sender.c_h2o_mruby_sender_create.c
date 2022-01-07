
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int mrb_value ;
struct TYPE_17__ {int bytes_left; int body_obj; } ;
typedef TYPE_6__ h2o_mruby_sender_t ;
struct TYPE_18__ {TYPE_5__* req; TYPE_2__* ctx; } ;
typedef TYPE_7__ h2o_mruby_generator_t ;
struct TYPE_15__ {int content_length; } ;
struct TYPE_14__ {int len; int base; } ;
struct TYPE_16__ {TYPE_4__ res; TYPE_3__ method; int pool; } ;
struct TYPE_13__ {TYPE_1__* shared; } ;
struct TYPE_12__ {int mrb; } ;


 int H2O_STRLIT (char*) ;
 TYPE_6__* h2o_mem_alloc_pool_aligned (int *,size_t,size_t) ;
 scalar_t__ h2o_memis (int ,int ,int ) ;
 int memset (TYPE_6__*,int ,size_t) ;
 int mrb_gc_register (int ,int ) ;
 int mrb_nil_p (int ) ;

h2o_mruby_sender_t *h2o_mruby_sender_create(h2o_mruby_generator_t *generator, mrb_value body, size_t alignment, size_t sz)
{
    h2o_mruby_sender_t *sender = h2o_mem_alloc_pool_aligned(&generator->req->pool, alignment, sz);
    memset(sender, 0, sz);
    sender->body_obj = body;
    if (!mrb_nil_p(body))
        mrb_gc_register(generator->ctx->shared->mrb, body);
    sender->bytes_left = h2o_memis(generator->req->method.base, generator->req->method.len, H2O_STRLIT("HEAD"))
                             ? 0
                             : generator->req->res.content_length;
    return sender;
}
