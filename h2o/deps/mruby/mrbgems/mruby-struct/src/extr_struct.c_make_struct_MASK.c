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
struct RClass {int dummy; } ;
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_sym ;
typedef  int /*<<< orphan*/  mrb_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct RClass*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MRB_TT_ARRAY ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct RClass*) ; 
 struct RClass* FUNC6 (int /*<<< orphan*/ *,struct RClass*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct RClass*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct RClass* FUNC10 (int /*<<< orphan*/ *,struct RClass*,int /*<<< orphan*/ ,struct RClass*) ; 
 int /*<<< orphan*/  mrb_instance_new ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct RClass*) ; 
 int /*<<< orphan*/  mrb_struct_s_members_m ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static mrb_value
FUNC20(mrb_state *mrb, mrb_value name, mrb_value members, struct RClass *klass)
{
  mrb_value nstr;
  mrb_sym id;
  struct RClass *c;

  if (FUNC14(name)) {
    c = FUNC6(mrb, klass);
  }
  else {
    /* old style: should we warn? */
    FUNC18(mrb, name);
    id = FUNC15(mrb, name);
    if (!FUNC4(mrb, FUNC17(mrb, id, NULL))) {
      FUNC13(mrb, id, "identifier %S needs to be constant", name);
    }
    if (FUNC7(mrb, FUNC16(klass), id)) {
      FUNC19(mrb, "redefining constant Struct::%S", name);
      FUNC8(mrb, FUNC16(klass), id);
    }
    c = FUNC10(mrb, klass, FUNC3(name), klass);
  }
  FUNC2(c, MRB_TT_ARRAY);
  nstr = FUNC16(c);
  FUNC12(mrb, nstr, FUNC11(mrb, "__members__"), members);

  FUNC9(mrb, c, "new", mrb_instance_new, FUNC0());
  FUNC9(mrb, c, "[]", mrb_instance_new, FUNC0());
  FUNC9(mrb, c, "members", mrb_struct_s_members_m, FUNC1());
  /* RSTRUCT(nstr)->basic.c->super = c->c; */
  FUNC5(mrb, members, c);
  return nstr;
}