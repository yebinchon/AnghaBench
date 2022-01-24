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
struct TYPE_3__ {int /*<<< orphan*/ * mrb; } ;
typedef  TYPE_1__ h2o_mruby_shared_context_t ;

/* Variables and functions */
 int /*<<< orphan*/  H2O_MRUBY_CODE_REDIS ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  call_method ; 
 int /*<<< orphan*/  connect_method ; 
 int /*<<< orphan*/  disconnect_method ; 
 int /*<<< orphan*/  disconnected_method ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 struct RClass* FUNC5 (int /*<<< orphan*/ *,struct RClass*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct RClass*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct RClass* FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  redis_join_reply_callback ; 
 int /*<<< orphan*/  setup_method ; 

void FUNC8(h2o_mruby_shared_context_t *ctx)
{
    mrb_state *mrb = ctx->mrb;

    FUNC4(mrb, H2O_MRUBY_CODE_REDIS, "(h2o)lib/handler/mruby/embedded/redis.rb", 1);
    FUNC2(mrb);

    struct RClass *module = FUNC7(mrb, "H2O");

    FUNC3(mrb, "_h2o__redis_join_reply", redis_join_reply_callback);

    struct RClass *redis_klass = FUNC5(mrb, module, "Redis");
    FUNC6(mrb, redis_klass, "__setup", setup_method, FUNC1());
    FUNC6(mrb, redis_klass, "__connect", connect_method, FUNC1());
    FUNC6(mrb, redis_klass, "disconnected?", disconnected_method, FUNC1());
    FUNC6(mrb, redis_klass, "disconnect", disconnect_method, FUNC1());
    FUNC6(mrb, redis_klass, "__call", call_method, FUNC0(1, 0));
}