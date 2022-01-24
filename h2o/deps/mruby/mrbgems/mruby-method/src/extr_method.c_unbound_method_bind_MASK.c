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
struct RObject {int dummy; } ;
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;

/* Variables and functions */
 int /*<<< orphan*/  E_TYPE_ERROR ; 
 scalar_t__ MRB_TT_MODULE ; 
 scalar_t__ MRB_TT_SCLASS ; 
 struct RObject* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct RObject*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct RObject*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char const*) ; 

__attribute__((used)) static mrb_value
FUNC16(mrb_state *mrb, mrb_value self)
{
  struct RObject *me;
  mrb_value owner = FUNC6(mrb, self, FUNC5(mrb, "@owner"));
  mrb_value name = FUNC6(mrb, self, FUNC5(mrb, "@name"));
  mrb_value proc = FUNC6(mrb, self, FUNC5(mrb, "proc"));
  mrb_value klass = FUNC6(mrb, self, FUNC5(mrb, "@klass"));
  mrb_value recv;

  FUNC4(mrb, "o", &recv);

  if (FUNC14(owner) != MRB_TT_MODULE &&
      FUNC3(owner) != FUNC7(mrb, recv) &&
      !FUNC8(mrb, recv, FUNC3(owner))) {
        if (FUNC14(owner) == MRB_TT_SCLASS) {
          FUNC11(mrb, E_TYPE_ERROR, "singleton method called for a different object");
        } else {
          const char *s = FUNC2(mrb, FUNC3(owner));
          FUNC12(mrb, E_TYPE_ERROR, "bind argument must be an instance of %S", FUNC13(mrb, s, FUNC15(s)));
        }
  }
  me = FUNC0(mrb, FUNC1(mrb, "Method"));
  FUNC9(mrb, me, FUNC5(mrb, "@owner"), owner);
  FUNC9(mrb, me, FUNC5(mrb, "@recv"), recv);
  FUNC9(mrb, me, FUNC5(mrb, "@name"), name);
  FUNC9(mrb, me, FUNC5(mrb, "proc"), proc);
  FUNC9(mrb, me, FUNC5(mrb, "@klass"), klass);

  return FUNC10(me);
}