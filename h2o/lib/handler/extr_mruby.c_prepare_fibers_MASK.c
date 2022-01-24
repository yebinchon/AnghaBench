#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mrb_value ;
struct TYPE_17__ {int /*<<< orphan*/  kernel_module; } ;
typedef  TYPE_4__ mrb_state ;
struct TYPE_18__ {TYPE_1__* handler; TYPE_3__* shared; } ;
typedef  TYPE_5__ h2o_mruby_context_t ;
struct TYPE_15__ {int /*<<< orphan*/  len; int /*<<< orphan*/  base; } ;
struct TYPE_19__ {int /*<<< orphan*/  lineno; int /*<<< orphan*/  path; TYPE_2__ source; } ;
typedef  TYPE_6__ h2o_mruby_config_vars_t ;
struct TYPE_16__ {TYPE_4__* mrb; } ;
struct TYPE_14__ {TYPE_6__ config; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

mrb_value FUNC12(h2o_mruby_context_t *ctx)
{
    mrb_state *mrb = ctx->shared->mrb;

    h2o_mruby_config_vars_t config = ctx->handler->config;
    mrb_value conf = FUNC6(mrb, 3);
    FUNC7(mrb, conf, FUNC10(FUNC8(mrb, "code")),
                 FUNC2(mrb, config.source.base, config.source.len));
    FUNC7(mrb, conf, FUNC10(FUNC8(mrb, "file")),
                 FUNC2(mrb, config.path, FUNC11(config.path)));
    FUNC7(mrb, conf, FUNC10(FUNC8(mrb, "line")), FUNC4(config.lineno));

    /* run code and generate handler */
    mrb_value result = FUNC5(mrb, FUNC9(mrb->kernel_module), "_h2o_prepare_app", 1, conf);
    FUNC1(mrb);
    FUNC0(FUNC3(result));

    return result;
}