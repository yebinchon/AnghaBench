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
typedef  int /*<<< orphan*/  mrb_state ;
struct TYPE_5__ {TYPE_1__* req; } ;
typedef  TYPE_2__ h2o_mruby_generator_t ;
struct TYPE_4__ {int /*<<< orphan*/ * _generator; } ;

/* Variables and functions */
 int /*<<< orphan*/  E_RUNTIME_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static mrb_value FUNC2(mrb_state *mrb, h2o_mruby_generator_t *generator)
{
    if (generator == NULL || generator->req == NULL)
        return FUNC0(mrb, E_RUNTIME_ERROR, "downstream HTTP closed");
    if (generator->req->_generator == NULL)
        return FUNC0(mrb, E_RUNTIME_ERROR, "cannot send chunk before sending headers");
    return FUNC1();
}