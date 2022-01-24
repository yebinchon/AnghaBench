#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  rack_input; TYPE_2__* ctx; } ;
typedef  TYPE_3__ h2o_mruby_generator_t ;
struct TYPE_6__ {TYPE_1__* shared; } ;
struct TYPE_5__ {int /*<<< orphan*/  mrb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(h2o_mruby_generator_t *generator)
{
    if (!FUNC1(generator->rack_input))
        FUNC0(generator->ctx->shared->mrb, generator->rack_input, NULL, -1, 0, NULL, NULL);
}