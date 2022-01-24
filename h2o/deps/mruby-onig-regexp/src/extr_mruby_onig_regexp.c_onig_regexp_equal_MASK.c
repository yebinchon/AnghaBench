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
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  int /*<<< orphan*/  OnigRegex ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E_RUNTIME_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mrb_onig_regexp_type ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static mrb_value
FUNC13(mrb_state *mrb, mrb_value self) {
  mrb_value other;
  OnigRegex self_reg, other_reg;

  FUNC3(mrb, "o", &other);
  if (FUNC7(mrb, self, other)){
    return FUNC11();
  }
  if (FUNC6(other)) {
    return FUNC2();
  }
  if (!FUNC8(mrb, other, FUNC1(mrb, "OnigRegexp"))) {
    return FUNC2();
  }
  FUNC0(mrb, self, &mrb_onig_regexp_type, self_reg);
  FUNC0(mrb, other, &mrb_onig_regexp_type, other_reg);

  if (!self_reg || !other_reg){
      FUNC9(mrb, E_RUNTIME_ERROR, "Invalid OnigRegexp");
  }
  if (FUNC12(self_reg) != FUNC12(other_reg)){
      return FUNC2();
  }
  return FUNC10(mrb, FUNC5(mrb, self, FUNC4(mrb, "@source")), FUNC5(mrb, other, FUNC4(mrb, "@source"))) ?
      FUNC11() : FUNC2();
}