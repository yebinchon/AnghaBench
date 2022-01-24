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
 int /*<<< orphan*/  H2O_MRUBY_CHANNEL_CLASS ; 
 int /*<<< orphan*/  H2O_MRUBY_CODE_CHANNEL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct RClass*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MRB_TT_DATA ; 
 int /*<<< orphan*/  channel_initialize_method ; 
 int /*<<< orphan*/  channel_notify_method ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct RClass* FUNC6 (int /*<<< orphan*/ *,struct RClass*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct RClass*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct RClass* FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct RClass*) ; 
 int /*<<< orphan*/  wait_callback ; 

void FUNC10(h2o_mruby_shared_context_t *shared_ctx)
{
    mrb_state *mrb = shared_ctx->mrb;

    FUNC4(mrb, H2O_MRUBY_CODE_CHANNEL, "(h2o)lib/handler/mruby/embedded/channel.rb", 1);
    FUNC2(mrb);

    struct RClass *module, *klass;
    module = FUNC8(mrb, "H2O");

    klass = FUNC6(mrb, module, "Channel");
    FUNC1(klass, MRB_TT_DATA);
    FUNC5(mrb, shared_ctx->constants, H2O_MRUBY_CHANNEL_CLASS, FUNC9(klass));
    FUNC7(mrb, klass, "initialize", channel_initialize_method, FUNC0());
    FUNC7(mrb, klass, "_notify", channel_notify_method, FUNC0());
    FUNC3(mrb, "_h2o__channel_wait", wait_callback);
}