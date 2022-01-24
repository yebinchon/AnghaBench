#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_7__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mrb_value ;
struct TYPE_10__ {int /*<<< orphan*/ * exc; TYPE_2__* ud; } ;
typedef  TYPE_1__ mrb_state ;
struct TYPE_12__ {scalar_t__ size; int /*<<< orphan*/ * entries; } ;
struct TYPE_11__ {TYPE_7__ callbacks; } ;
typedef  TYPE_2__ h2o_mruby_shared_context_t ;
typedef  int /*<<< orphan*/  h2o_mruby_callback_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_7__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

void FUNC8(mrb_state *mrb, const char *name, h2o_mruby_callback_t callback)
{
    h2o_mruby_shared_context_t *shared_ctx = mrb->ud;
    FUNC2(NULL, &shared_ctx->callbacks, shared_ctx->callbacks.size + 1);
    shared_ctx->callbacks.entries[shared_ctx->callbacks.size++] = callback;

    mrb_value args[2];
    args[0] = FUNC6(mrb, name);
    args[1] = FUNC3(-(int)shared_ctx->callbacks.size);
    FUNC4(mrb, FUNC7(mrb), FUNC5(mrb, "_h2o_define_callback"), 2, args);

    if (mrb->exc != NULL) {
        FUNC0("failed to define mruby function: %s\n", name);
        FUNC1(mrb);
    }
}