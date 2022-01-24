#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct RClass {int dummy; } ;
struct TYPE_11__ {int /*<<< orphan*/  kernel_module; } ;
typedef  TYPE_1__ mrb_state ;
struct TYPE_12__ {int /*<<< orphan*/  constants; TYPE_1__* mrb; } ;
typedef  TYPE_2__ h2o_mruby_shared_context_t ;

/* Variables and functions */
 int /*<<< orphan*/  H2O_MRUBY_CODE_HTTP_REQUEST ; 
 int /*<<< orphan*/  H2O_MRUBY_HTTP_EMPTY_INPUT_STREAM_CLASS ; 
 int /*<<< orphan*/  H2O_MRUBY_HTTP_INPUT_STREAM_CLASS ; 
 int /*<<< orphan*/  H2O_MRUBY_HTTP_REQUEST_CLASS ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  http_fetch_chunk_callback ; 
 int /*<<< orphan*/  http_join_response_callback ; 
 int /*<<< orphan*/  http_request_method ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct RClass* FUNC5 (TYPE_1__*,struct RClass*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct RClass* FUNC7 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct RClass*) ; 

void FUNC9(h2o_mruby_shared_context_t *ctx)
{
    mrb_state *mrb = ctx->mrb;

    FUNC3(mrb, H2O_MRUBY_CODE_HTTP_REQUEST, "(h2o)lib/handler/mruby/embedded/http_request.rb", 1);
    FUNC1(mrb);

    struct RClass *module, *klass;
    module = FUNC7(mrb, "H2O");

    FUNC6(mrb, mrb->kernel_module, "http_request", http_request_method, FUNC0(1, 2));

    klass = FUNC5(mrb, module, "HttpRequest");
    FUNC4(mrb, ctx->constants, H2O_MRUBY_HTTP_REQUEST_CLASS, FUNC8(klass));

    klass = FUNC5(mrb, module, "HttpInputStream");
    FUNC4(mrb, ctx->constants, H2O_MRUBY_HTTP_INPUT_STREAM_CLASS, FUNC8(klass));

    klass = FUNC5(mrb, klass, "Empty");
    FUNC4(mrb, ctx->constants, H2O_MRUBY_HTTP_EMPTY_INPUT_STREAM_CLASS, FUNC8(klass));

    FUNC2(mrb, "_h2o__http_join_response", http_join_response_callback);
    FUNC2(mrb, "_h2o__http_fetch_chunk", http_fetch_chunk_callback);
}