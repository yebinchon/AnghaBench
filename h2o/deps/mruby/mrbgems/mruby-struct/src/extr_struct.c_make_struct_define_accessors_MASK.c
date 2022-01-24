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
struct RClass {int dummy; } ;
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_sym ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  int /*<<< orphan*/  mrb_method_t ;
typedef  size_t mrb_int ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct RProc*) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct RClass*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct RProc* FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mrb_struct_ref ; 
 int /*<<< orphan*/  mrb_struct_set_m ; 
 char* FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/  const) ; 

__attribute__((used)) static void
FUNC13(mrb_state *mrb, mrb_value members, struct RClass *c)
{
  const mrb_value *ptr_members = FUNC2(members);
  mrb_int i;
  mrb_int len = FUNC1(members);
  int ai = FUNC8(mrb);

  for (i=0; i<len; i++) {
    mrb_sym id = FUNC12(ptr_members[i]);
    const char *name = FUNC11(mrb, id, NULL);

    if (FUNC4(mrb, name) || FUNC3(mrb, name)) {
      mrb_method_t m;
      mrb_value at = FUNC6(i);
      struct RProc *aref = FUNC10(mrb, mrb_struct_ref, 1, &at);
      struct RProc *aset = FUNC10(mrb, mrb_struct_set_m, 1, &at);
      FUNC0(m, aref);
      FUNC5(mrb, c, id, m);
      FUNC0(m, aset);
      FUNC5(mrb, c, FUNC9(mrb, id), m);
      FUNC7(mrb, ai);
    }
  }
}