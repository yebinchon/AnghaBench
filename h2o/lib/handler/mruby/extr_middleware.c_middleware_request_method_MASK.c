#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int /*<<< orphan*/  request; } ;
struct TYPE_19__ {int /*<<< orphan*/  overrides; int /*<<< orphan*/  path; int /*<<< orphan*/  authority; int /*<<< orphan*/  scheme; int /*<<< orphan*/  method; } ;
struct st_mruby_subreq_t {TYPE_2__ refs; TYPE_4__ super; } ;
typedef  int /*<<< orphan*/  mrb_value ;
struct TYPE_18__ {int /*<<< orphan*/ * exc; TYPE_5__* ud; } ;
typedef  TYPE_3__ mrb_state ;
typedef  TYPE_4__ h2o_req_t ;
struct TYPE_20__ {TYPE_6__* current_context; } ;
typedef  TYPE_5__ h2o_mruby_shared_context_t ;
struct TYPE_21__ {TYPE_1__* shared; } ;
typedef  TYPE_6__ h2o_mruby_context_t ;
struct TYPE_16__ {int /*<<< orphan*/  constants; } ;

/* Variables and functions */
 int /*<<< orphan*/  H2O_MRUBY_APP_REQUEST_CLASS ; 
 int /*<<< orphan*/  app_request_type ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct st_mruby_subreq_t* FUNC1 (TYPE_6__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,struct st_mruby_subreq_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static mrb_value FUNC12(mrb_state *mrb, mrb_value self)
{
    h2o_mruby_shared_context_t *shared_ctx = mrb->ud;
    h2o_mruby_context_t *ctx = shared_ctx->current_context;
    FUNC0(ctx != NULL);

    mrb_value env;
    mrb_value reprocess;
    FUNC8(mrb, "H", &env);
    reprocess = FUNC10(mrb, self, FUNC9(mrb, "@reprocess"));

    /* create subreq */
    struct st_mruby_subreq_t *subreq = FUNC1(shared_ctx->current_context, env, FUNC6(reprocess));
    if (mrb->exc != NULL) {
        mrb_value exc = FUNC11(mrb->exc);
        mrb->exc = NULL;
        FUNC7(mrb, exc);
    }

    subreq->refs.request = FUNC3(mrb, FUNC5(ctx->shared->constants, H2O_MRUBY_APP_REQUEST_CLASS),
                                                          subreq, &app_request_type);

    h2o_req_t *super = &subreq->super;
    if (FUNC6(reprocess)) {
        FUNC4(super, super->method, super->scheme, super->authority, super->path, super->overrides, 1);
    } else {
        FUNC2(super);
    }

    return subreq->refs.request;
}