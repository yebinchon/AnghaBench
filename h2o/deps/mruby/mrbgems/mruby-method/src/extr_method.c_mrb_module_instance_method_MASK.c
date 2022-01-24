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
 int /*<<< orphan*/  TRUE ; 
 struct RProc* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct RProc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct RProc*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct RProc**,struct RProc**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static mrb_value
FUNC10(mrb_state *mrb, mrb_value self)
{
  struct RClass *owner;
  struct RProc *proc;
  struct RObject *ume;
  mrb_sym name;

  FUNC3(mrb, "n", &name);

  FUNC8(mrb, FUNC2(self), self, name, &owner, &proc, TRUE);

  ume = FUNC0(mrb, FUNC1(mrb, "UnboundMethod"));
  FUNC6(mrb, ume, FUNC4(mrb, "@owner"), FUNC7(owner));
  FUNC6(mrb, ume, FUNC4(mrb, "@recv"), FUNC5());
  FUNC6(mrb, ume, FUNC4(mrb, "@name"), FUNC9(name));
  FUNC6(mrb, ume, FUNC4(mrb, "proc"), proc ? FUNC7(proc) : FUNC5());
  FUNC6(mrb, ume, FUNC4(mrb, "@klass"), self);

  return FUNC7(ume);
}