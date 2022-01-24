#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct RClass {int dummy; } ;
typedef  int /*<<< orphan*/  mrb_state ;
struct TYPE_3__ {int /*<<< orphan*/  constants; int /*<<< orphan*/ * mrb; } ;
typedef  TYPE_1__ h2o_mruby_shared_context_t ;

/* Variables and functions */
 int /*<<< orphan*/  H2O_MRUBY_APP_INPUT_STREAM_CLASS ; 
 int /*<<< orphan*/  H2O_MRUBY_APP_REQUEST_CLASS ; 
 int /*<<< orphan*/  H2O_MRUBY_CODE_MIDDLEWARE ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  build_response_method ; 
 int /*<<< orphan*/  can_build_response_method ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  middleware_request_method ; 
 int /*<<< orphan*/  middleware_wait_chunk_callback ; 
 int /*<<< orphan*/  middleware_wait_response_callback ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct RClass* FUNC6 (int /*<<< orphan*/ *,struct RClass*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct RClass*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct RClass* FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct RClass*) ; 

void FUNC10(h2o_mruby_shared_context_t *shared_ctx)
{
    mrb_state *mrb = shared_ctx->mrb;

    FUNC4(mrb, H2O_MRUBY_CODE_MIDDLEWARE);
    FUNC2(mrb);

    struct RClass *module = FUNC8(mrb, "H2O");

    struct RClass *app_klass = FUNC6(shared_ctx->mrb, module, "App");
    FUNC7(mrb, app_klass, "request", middleware_request_method, FUNC0(1, 0));

    struct RClass *app_request_klass = FUNC6(shared_ctx->mrb, module, "AppRequest");
    FUNC5(shared_ctx->mrb, shared_ctx->constants, H2O_MRUBY_APP_REQUEST_CLASS, FUNC9(app_request_klass));
    FUNC3(mrb, "_h2o_middleware_wait_response", middleware_wait_response_callback);
    FUNC7(mrb, app_request_klass, "_can_build_response?", can_build_response_method, FUNC1());
    FUNC7(mrb, app_request_klass, "_build_response", build_response_method, FUNC1());

    struct RClass *app_input_stream_klass = FUNC6(shared_ctx->mrb, module, "AppInputStream");
    FUNC5(shared_ctx->mrb, shared_ctx->constants, H2O_MRUBY_APP_INPUT_STREAM_CLASS, FUNC9(app_input_stream_klass));
    FUNC3(mrb, "_h2o_middleware_wait_chunk", middleware_wait_chunk_callback);

    FUNC2(mrb);
}