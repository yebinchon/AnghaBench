
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_11__ ;


typedef int mrb_value ;
struct TYPE_15__ {int * exc; } ;
typedef TYPE_2__ mrb_state ;
struct TYPE_13__ {scalar_t__ len; } ;
struct TYPE_16__ {scalar_t__ content_length; TYPE_11__ entity; int pool; } ;
typedef TYPE_3__ h2o_req_t ;
struct TYPE_17__ {TYPE_1__* shared; } ;
typedef TYPE_4__ h2o_mruby_context_t ;
struct TYPE_14__ {TYPE_2__* mrb; } ;


 int E_RUNTIME_ERROR ;
 int RSTRING_LEN (int ) ;
 int RSTRING_PTR (int ) ;
 scalar_t__ SIZE_MAX ;
 TYPE_11__ h2o_iovec_init (int *,int ) ;
 TYPE_11__ h2o_strdup (int *,int ,int ) ;
 int mrb_exc_new_str_lit (TYPE_2__*,int ,char*) ;
 int mrb_funcall (TYPE_2__*,int ,char*,int ) ;
 int mrb_intern_lit (TYPE_2__*,char*) ;
 scalar_t__ mrb_nil_p (int ) ;
 void* mrb_obj_ptr (int ) ;
 int mrb_respond_to (TYPE_2__*,int ,int ) ;
 int mrb_string_p (int ) ;

__attribute__((used)) static void prepare_subreq_entity(h2o_req_t *subreq, h2o_mruby_context_t *ctx, mrb_value rack_input)
{
    mrb_state *mrb = ctx->shared->mrb;

    if (mrb_nil_p(rack_input)) {
        subreq->entity = h2o_iovec_init(((void*)0), 0);
        subreq->content_length = 0;
        return;
    }


    if (!mrb_respond_to(mrb, rack_input, mrb_intern_lit(mrb, "read"))) {
        mrb->exc = mrb_obj_ptr(mrb_exc_new_str_lit(mrb, E_RUNTIME_ERROR, "'rack.input' must respond to 'read'"));
        return;
    }
    mrb_value body = mrb_funcall(mrb, rack_input, "read", 0);
    if (mrb->exc != ((void*)0))
        return;
    if (!mrb_string_p(body)) {
        mrb->exc = mrb_obj_ptr(mrb_exc_new_str_lit(mrb, E_RUNTIME_ERROR, "return value of `read` must be a string"));
        return;
    }
    subreq->entity = h2o_strdup(&subreq->pool, RSTRING_PTR(body), RSTRING_LEN(body));

    if (subreq->content_length == SIZE_MAX) {
        subreq->content_length = subreq->entity.len;
    } else {
        if (subreq->content_length > subreq->entity.len)
            subreq->content_length = subreq->entity.len;
        else if (subreq->content_length < subreq->entity.len)
            subreq->entity.len = subreq->content_length;
    }
}
