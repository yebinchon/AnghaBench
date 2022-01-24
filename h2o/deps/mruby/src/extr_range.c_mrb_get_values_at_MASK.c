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
typedef  size_t mrb_int ;

/* Variables and functions */
 int /*<<< orphan*/  E_TYPE_ERROR ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC2 (int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/  const,size_t*,size_t*,size_t,int /*<<< orphan*/ ) ; 

mrb_value
FUNC7(mrb_state *mrb, mrb_value obj, mrb_int olen, mrb_int argc, const mrb_value *argv, mrb_value (*func)(mrb_state*, mrb_value, mrb_int))
{
  mrb_int i, j, beg, len;
  mrb_value result;
  result = FUNC0(mrb);

  for (i = 0; i < argc; ++i) {
    if (FUNC3(argv[i])) {
      FUNC1(mrb, result, func(mrb, obj, FUNC2(argv[i])));
    }
    else if (FUNC6(mrb, argv[i], &beg, &len, olen, FALSE) == 1) {
      mrb_int const end = olen < beg + len ? olen : beg + len;
      for (j = beg; j < end; ++j) {
        FUNC1(mrb, result, func(mrb, obj, j));
      }

      for (; j < beg + len; ++j) {
        FUNC1(mrb, result, FUNC4());
      }
    }
    else {
      FUNC5(mrb, E_TYPE_ERROR, "invalid values selector: %S", argv[i]);
    }
  }

  return result;
}