#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct RClass {int dummy; } ;
typedef  int /*<<< orphan*/  mrb_value ;
struct TYPE_11__ {TYPE_2__* c; } ;
typedef  TYPE_3__ mrb_state ;
typedef  int /*<<< orphan*/  mrb_int ;
struct TYPE_10__ {TYPE_1__* ci; } ;
struct TYPE_9__ {struct RClass* target_class; } ;

/* Variables and functions */
 int /*<<< orphan*/  E_ARGUMENT_ERROR ; 
#define  MRB_TT_FIXNUM 130 
#define  MRB_TT_FLOAT 129 
#define  MRB_TT_SYMBOL 128 
 struct RClass* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,char*,int /*<<< orphan*/  const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static mrb_value
FUNC7(mrb_state *mrb, mrb_value self)
{
  const mrb_value *argv;
  mrb_int argc;
  mrb_value blk;
  struct RClass *c;

  FUNC1(mrb, "*&", &argv, &argc, &blk);

  if (FUNC2(blk)) {
    FUNC3(mrb, E_ARGUMENT_ERROR, "no block given");
  }

  switch (FUNC5(self)) {
  case MRB_TT_SYMBOL:
  case MRB_TT_FIXNUM:
#ifndef MRB_WITHOUT_FLOAT
  case MRB_TT_FLOAT:
#endif
    c = NULL;
    break;
  default:
    c = FUNC0(FUNC4(mrb, self));
    break;
  }
  mrb->c->ci->target_class = c;
  return FUNC6(mrb, blk, self, argc, argv);
}