#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_8__ ;
typedef  struct TYPE_24__   TYPE_7__ ;
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct TYPE_17__   TYPE_13__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mrb_value ;
struct TYPE_21__ {int /*<<< orphan*/  pool; TYPE_1__* conn; } ;
typedef  TYPE_4__ h2o_req_t ;
struct TYPE_22__ {int /*<<< orphan*/  mrb; int /*<<< orphan*/  constants; } ;
typedef  TYPE_5__ h2o_mruby_shared_context_t ;
struct TYPE_23__ {int /*<<< orphan*/  super; } ;
typedef  TYPE_6__ h2o_mruby_handler_t ;
struct TYPE_20__ {int /*<<< orphan*/  generator; } ;
struct TYPE_19__ {int /*<<< orphan*/ * stop; int /*<<< orphan*/ * proceed; } ;
struct TYPE_24__ {TYPE_3__ refs; TYPE_13__* error_stream; int /*<<< orphan*/ * sender; int /*<<< orphan*/  rack_input; TYPE_8__* ctx; TYPE_4__* req; TYPE_2__ super; } ;
typedef  TYPE_7__ h2o_mruby_generator_t ;
struct TYPE_25__ {int /*<<< orphan*/  proc; } ;
typedef  TYPE_8__ h2o_mruby_context_t ;
typedef  int /*<<< orphan*/  h2o_handler_t ;
struct TYPE_18__ {int /*<<< orphan*/  ctx; } ;
struct TYPE_17__ {TYPE_7__* generator; TYPE_8__* ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  H2O_MRUBY_GENERATOR_CLASS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_7__*) ; 
 int /*<<< orphan*/  generator_type ; 
 TYPE_5__* FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_8__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_13__* FUNC3 (int) ; 
 TYPE_7__* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_7__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_8__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  on_generator_dispose ; 

__attribute__((used)) static int FUNC13(h2o_handler_t *_handler, h2o_req_t *req)
{
    h2o_mruby_handler_t *handler = (void *)_handler;
    h2o_mruby_shared_context_t *shared = FUNC1(req->conn->ctx);
    int gc_arena = FUNC11(shared->mrb);

    h2o_mruby_context_t *ctx = FUNC2(req->conn->ctx, &handler->super);

    h2o_mruby_generator_t *generator = FUNC4(&req->pool, sizeof(*generator), on_generator_dispose);
    generator->super.proceed = NULL;
    generator->super.stop = NULL;
    generator->req = req;
    generator->ctx = ctx;
    generator->rack_input = FUNC12();
    generator->sender = NULL;

    generator->error_stream = FUNC3(sizeof(*generator->error_stream));
    generator->error_stream->ctx = ctx;
    generator->error_stream->generator = generator;

    mrb_value gen = FUNC5(shared->mrb, FUNC7(shared->constants, H2O_MRUBY_GENERATOR_CLASS),
                                                   generator, &generator_type);
    generator->refs.generator = gen;

    mrb_value env = FUNC0(generator);

    mrb_value args = FUNC8(shared->mrb);
    FUNC9(shared->mrb, args, 0, env);
    FUNC9(shared->mrb, args, 1, gen);

    int is_delegate = 0;
    FUNC6(ctx, ctx->proc, args, &is_delegate);

    FUNC10(shared->mrb, gc_arena);
    if (is_delegate)
        return -1;
    return 0;
}