
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int input_stream; int request; } ;
struct st_mruby_subreq_t {TYPE_1__ refs; } ;
typedef int mrb_state ;


 int dispose_subreq (struct st_mruby_subreq_t*) ;
 scalar_t__ mrb_nil_p (int ) ;
 int mrb_nil_value () ;

__attribute__((used)) static void on_gc_dispose_app_request(mrb_state *mrb, void *_subreq)
{
    struct st_mruby_subreq_t *subreq = _subreq;
    if (subreq == ((void*)0))
        return;
    subreq->refs.request = mrb_nil_value();
    if (mrb_nil_p(subreq->refs.input_stream))
        dispose_subreq(subreq);
}
