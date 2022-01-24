#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct RClass {int dummy; } ;
typedef  int /*<<< orphan*/  mrb_value ;
struct TYPE_5__ {TYPE_2__* ud; } ;
typedef  TYPE_1__ mrb_state ;
struct TYPE_6__ {int /*<<< orphan*/  constants; } ;
typedef  TYPE_2__ h2o_mruby_shared_context_t ;

/* Variables and functions */
 int /*<<< orphan*/  H2O_MRUBY_H2O_MODULE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct RClass* FUNC1 (TYPE_1__*,struct RClass*,char const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct RClass *FUNC3(mrb_state *mrb, const char *name)
{
    h2o_mruby_shared_context_t *shared = mrb->ud;
    mrb_value h2o = FUNC0(shared->constants, H2O_MRUBY_H2O_MODULE);
    struct RClass *redis_klass = FUNC1(mrb, (struct RClass *)FUNC2(h2o), "Redis");
    struct RClass *error_klass = FUNC1(mrb, redis_klass, name);
    return error_klass;
}