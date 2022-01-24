#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct RClass {int dummy; } ;
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_sym ;
struct TYPE_15__ {TYPE_2__* c; } ;
typedef  TYPE_3__ mrb_state ;
typedef  scalar_t__ mrb_int ;
struct TYPE_14__ {TYPE_1__* ci; } ;
struct TYPE_13__ {int /*<<< orphan*/  mid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct RClass* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,char*,int /*<<< orphan*/ **,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct RClass*) ; 

__attribute__((used)) static mrb_value
FUNC12(mrb_state *mrb, mrb_value self)
{
  mrb_value proc = FUNC8(mrb, self, FUNC7(mrb, "proc"));
  mrb_value name = FUNC8(mrb, self, FUNC7(mrb, "@name"));
  mrb_value recv = FUNC8(mrb, self, FUNC7(mrb, "@recv"));
  struct RClass *owner = FUNC3(FUNC8(mrb, self, FUNC7(mrb, "@owner")));
  mrb_int argc;
  mrb_value *argv, ret, block;
  mrb_sym orig_mid;

  FUNC6(mrb, "*&", &argv, &argc, &block);
  orig_mid = mrb->c->ci->mid;
  mrb->c->ci->mid = FUNC10(name);
  if (FUNC9(proc)) {
    mrb_value missing_argv = FUNC1(mrb, argc, argv);
    FUNC2(mrb, missing_argv, name);
    ret = FUNC4(mrb, recv, FUNC7(mrb, "method_missing"), argc + 1, FUNC0(missing_argv));
  }
  else if (!FUNC9(block)) {
    /*
      workaround since `mrb_yield_with_class` does not support passing block as parameter
      need new API that initializes `mrb->c->stack[argc+1]` with block passed by argument
    */
    ret = FUNC5(mrb, recv, FUNC10(name), argc, argv, block);
  }
  else {
    ret = FUNC11(mrb, proc, argc, argv, recv, owner);
  }
  mrb->c->ci->mid = orig_mid;
  return ret;
}