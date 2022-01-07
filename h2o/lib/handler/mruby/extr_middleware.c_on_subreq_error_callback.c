
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_15__ {int pool; } ;
struct st_mruby_subreq_t {int error_stream; TYPE_2__ super; TYPE_1__* ctx; } ;
typedef int mrb_value ;
struct TYPE_17__ {int * exc; } ;
typedef TYPE_4__ mrb_state ;
struct TYPE_18__ {int len; int base; } ;
typedef TYPE_5__ h2o_iovec_t ;
struct TYPE_16__ {TYPE_4__* mrb; } ;
struct TYPE_14__ {TYPE_3__* shared; } ;


 int RSTRING_PTR (int ) ;
 int assert (int) ;
 TYPE_5__ h2o_concat (int *,TYPE_5__,TYPE_5__) ;
 int h2o_error_printf (char*,int ) ;
 int h2o_mruby_new_str (TYPE_4__*,int ,int ) ;
 int mrb_funcall (TYPE_4__*,int ,char*,int,int ) ;
 int mrb_inspect (TYPE_4__*,int ) ;
 int mrb_nil_p (int ) ;
 int mrb_obj_value (int *) ;

__attribute__((used)) static void on_subreq_error_callback(void *data, h2o_iovec_t prefix, h2o_iovec_t msg)
{
    struct st_mruby_subreq_t *subreq = (void *)data;
    mrb_state *mrb = subreq->ctx->shared->mrb;

    assert(!mrb_nil_p(subreq->error_stream));

    h2o_iovec_t concat = h2o_concat(&subreq->super.pool, prefix, msg);
    mrb_value msgstr = h2o_mruby_new_str(mrb, concat.base, concat.len);
    mrb_funcall(mrb, subreq->error_stream, "write", 1, msgstr);
    if (mrb->exc != ((void*)0)) {
        h2o_error_printf("%s\n", RSTRING_PTR(mrb_inspect(mrb, mrb_obj_value(mrb->exc))));
        mrb->exc = ((void*)0);
    }
}
