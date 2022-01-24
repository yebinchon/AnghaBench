#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_8__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/ * exc; } ;
typedef  TYPE_2__ mrb_state ;
struct TYPE_12__ {TYPE_8__* req; } ;
typedef  TYPE_3__ h2o_mruby_generator_t ;
struct TYPE_13__ {TYPE_1__* shared; } ;
typedef  TYPE_4__ h2o_mruby_context_t ;
struct TYPE_14__ {int /*<<< orphan*/ * _generator; } ;
struct TYPE_10__ {TYPE_2__* mrb; } ;

/* Variables and functions */
 int /*<<< orphan*/  H2O_MRUBY_MODULE_NAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_8__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_8__*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(h2o_mruby_context_t *ctx, h2o_mruby_generator_t *generator)
{
    mrb_state *mrb = ctx->shared->mrb;
    FUNC1(mrb->exc != NULL);

    if (generator == NULL || generator->req->_generator != NULL) {
        FUNC2("mruby raised: %s\n", FUNC0(FUNC5(mrb, FUNC6(mrb->exc))));
    } else {
        FUNC3(generator->req, H2O_MRUBY_MODULE_NAME, "mruby raised: %s\n",
                          FUNC0(FUNC5(mrb, FUNC6(mrb->exc))));
        FUNC4(generator->req, "Internal Server Error", "Internal Server Error", 0);
    }
    mrb->exc = NULL;
}