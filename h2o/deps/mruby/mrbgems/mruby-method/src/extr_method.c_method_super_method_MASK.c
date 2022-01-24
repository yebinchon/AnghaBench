#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct RProc {int const tt; struct RProc* c; struct RProc* super; } ;
struct RObject {int const tt; struct RObject* c; struct RObject* super; } ;
struct RClass {int const tt; struct RClass* c; struct RClass* super; } ;
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;
struct TYPE_2__ {struct RProc* super; } ;

/* Variables and functions */
#define  MRB_TT_ICLASS 129 
#define  MRB_TT_SCLASS 128 
 struct RProc* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct RProc* FUNC1 (int /*<<< orphan*/ *,struct RProc**,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct RProc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct RProc*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static mrb_value
FUNC11(mrb_state *mrb, mrb_value self)
{
  mrb_value recv = FUNC4(mrb, self, FUNC3(mrb, "@recv"));
  mrb_value klass = FUNC4(mrb, self, FUNC3(mrb, "@klass"));
  mrb_value owner = FUNC4(mrb, self, FUNC3(mrb, "@owner"));
  mrb_value name = FUNC4(mrb, self, FUNC3(mrb, "@name"));
  struct RClass *super, *rklass;
  struct RProc *proc;
  struct RObject *me;

  switch (FUNC10(klass)) {
    case MRB_TT_SCLASS:
      super = FUNC2(klass)->super->super;
      break;
    case MRB_TT_ICLASS:
      super = FUNC2(klass)->super;
      break;
    default:
      super = FUNC2(owner)->super;
      break;
  }

  proc = FUNC1(mrb, &super, FUNC9(name));
  if (!proc)
    return FUNC5();

  rklass = super;
  while (super->tt == MRB_TT_ICLASS)
    super = super->c;

  me = FUNC0(mrb, FUNC6(mrb, self));
  FUNC7(mrb, me, FUNC3(mrb, "@owner"), FUNC8(super));
  FUNC7(mrb, me, FUNC3(mrb, "@recv"), recv);
  FUNC7(mrb, me, FUNC3(mrb, "@name"), name);
  FUNC7(mrb, me, FUNC3(mrb, "proc"), FUNC8(proc));
  FUNC7(mrb, me, FUNC3(mrb, "@klass"), FUNC8(rklass));

  return FUNC8(me);
}