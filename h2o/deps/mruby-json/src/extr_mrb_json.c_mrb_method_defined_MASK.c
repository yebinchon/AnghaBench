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
typedef  scalar_t__ mrb_sym ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  size_t mrb_int ;
typedef  int /*<<< orphan*/  mrb_bool ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static mrb_bool
FUNC9(mrb_state* mrb, mrb_value value, const char* name) {
  int ai = FUNC6(mrb);
  mrb_sym mid = FUNC7(mrb, name);
  mrb_value methods = FUNC4(mrb, value, "public_methods", 1, FUNC3());
  mrb_bool included = FALSE;
  if (FUNC2(methods)) {
    mrb_int i;
    for (i = 0; i < FUNC0(methods); ++i) {
      if (mid == FUNC8(FUNC1(methods)[i])) {
        included = TRUE;
        break;
      }
    }
  }
  FUNC5(mrb, ai);
  return included;
}