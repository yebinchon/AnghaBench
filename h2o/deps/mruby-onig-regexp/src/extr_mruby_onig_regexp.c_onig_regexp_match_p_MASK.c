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
typedef  scalar_t__ mrb_int ;
typedef  int OnigUChar ;
typedef  int /*<<< orphan*/  OnigRegex ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ ONIG_MISMATCH ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  mrb_onig_regexp_type ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int const*,int const*,int const*,int const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static mrb_value
FUNC9(mrb_state *mrb, mrb_value self) {
  mrb_value str = FUNC6();
  mrb_int pos = 0;
  OnigRegex reg;
  OnigUChar const* str_ptr;

  FUNC4(mrb, "o|i", &str, &pos);
  if (FUNC5(str)) {
    return FUNC6();
  }
  str = FUNC8(mrb, str);
  if (pos < 0 || (pos > 0 && pos >= FUNC1(str))) {
    return FUNC6();
  }

  FUNC0(mrb, self, &mrb_onig_regexp_type, reg);
  str_ptr = (OnigUChar const*)FUNC2(str);
  return FUNC3(FUNC7(
      reg, str_ptr, str_ptr + FUNC1(str),
      str_ptr + pos, str_ptr + FUNC1(str), NULL, 0) != ONIG_MISMATCH);
}