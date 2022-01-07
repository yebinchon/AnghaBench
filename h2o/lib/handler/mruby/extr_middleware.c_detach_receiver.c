
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct st_mruby_subreq_t {TYPE_2__* ctx; int receiver; } ;
typedef int mrb_value ;
struct TYPE_4__ {TYPE_1__* shared; } ;
struct TYPE_3__ {int mrb; } ;


 int assert (int) ;
 int mrb_gc_protect (int ,int ) ;
 int mrb_gc_unregister (int ,int ) ;
 int mrb_nil_p (int ) ;
 int mrb_nil_value () ;

__attribute__((used)) static mrb_value detach_receiver(struct st_mruby_subreq_t *subreq)
{
    mrb_value receiver = subreq->receiver;
    assert(!mrb_nil_p(receiver));
    subreq->receiver = mrb_nil_value();
    mrb_gc_unregister(subreq->ctx->shared->mrb, receiver);
    mrb_gc_protect(subreq->ctx->shared->mrb, receiver);
    return receiver;
}
