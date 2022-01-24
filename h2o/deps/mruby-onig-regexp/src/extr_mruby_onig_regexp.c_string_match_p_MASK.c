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
 scalar_t__ ONIG_MISMATCH ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  mrb_onig_regexp_type ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int const*,int const*,int const*,int const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static mrb_value
FUNC8(mrb_state *mrb, mrb_value self) {
  mrb_value str = self;
  mrb_int pos = 0;
  OnigRegex reg;
  OnigUChar const* str_ptr;

  FUNC3(mrb, "d|i", &reg, &mrb_onig_regexp_type, &pos);
  if (pos < 0 || (pos > 0 && pos >= FUNC0(str))) {
    return FUNC5();
  }

  if (FUNC4(str)) {
    return FUNC5();
  }
  str = FUNC6(mrb, str);

  str_ptr = (OnigUChar const*)FUNC1(str);
  return FUNC2(FUNC7(
      reg, str_ptr, str_ptr + FUNC0(str),
      str_ptr + pos, str_ptr + FUNC0(str), NULL, 0) != ONIG_MISMATCH);
}