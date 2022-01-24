#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct RProc {int dummy; } ;
typedef  struct RProc RObject ;
typedef  struct RProc RClass ;
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_sym ;
typedef  int /*<<< orphan*/  mrb_state ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 struct RProc* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct RProc* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct RProc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct RProc*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct RProc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct RProc**,struct RProc**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static mrb_value
FUNC10(mrb_state *mrb, mrb_value self)
{
  struct RClass *owner;
  struct RProc *proc;
  struct RObject *me;
  mrb_sym name;

  FUNC3(mrb, "n", &name);

  FUNC8(mrb, FUNC1(mrb, self), self, name, &owner, &proc, FALSE);

  me = FUNC0(mrb, FUNC2(mrb, "Method"));
  FUNC6(mrb, me, FUNC4(mrb, "@owner"), FUNC7(owner));
  FUNC6(mrb, me, FUNC4(mrb, "@recv"), self);
  FUNC6(mrb, me, FUNC4(mrb, "@name"), FUNC9(name));
  FUNC6(mrb, me, FUNC4(mrb, "proc"), proc ? FUNC7(proc) : FUNC5());
  FUNC6(mrb, me, FUNC4(mrb, "@klass"), FUNC7(FUNC1(mrb, self)));

  return FUNC7(me);
}