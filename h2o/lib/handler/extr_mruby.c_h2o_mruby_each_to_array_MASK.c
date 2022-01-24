#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mrb_value ;
struct TYPE_4__ {int /*<<< orphan*/  sym_call; } ;
struct TYPE_5__ {TYPE_1__ symbols; int /*<<< orphan*/  constants; int /*<<< orphan*/  mrb; } ;
typedef  TYPE_2__ h2o_mruby_shared_context_t ;

/* Variables and functions */
 int /*<<< orphan*/  H2O_MRUBY_PROC_EACH_TO_ARRAY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

mrb_value FUNC2(h2o_mruby_shared_context_t *shared_ctx, mrb_value src)
{
    return FUNC1(shared_ctx->mrb, FUNC0(shared_ctx->constants, H2O_MRUBY_PROC_EACH_TO_ARRAY),
                            shared_ctx->symbols.sym_call, 1, &src);
}