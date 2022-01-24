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

/* Variables and functions */
 int /*<<< orphan*/  E_ARGUMENT_ERROR ; 
#define  MRB_TT_DATA 129 
#define  MRB_TT_FIXNUM 128 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char const*) ; 

__attribute__((used)) static int
FUNC9(mrb_state *mrb, mrb_value obj, const char *key)
{
  mrb_value opt = FUNC1(mrb, obj, "[]", 1, FUNC6(FUNC2(mrb, key, FUNC8(key))));
  if (FUNC4(opt)) {
    return -1;
  }

  switch (FUNC7(opt)) {
    case MRB_TT_DATA: /* IO */
      return (int)FUNC0(FUNC3(mrb, opt));
    case MRB_TT_FIXNUM:
      return (int)FUNC0(opt);
    default:
      FUNC5(mrb, E_ARGUMENT_ERROR, "wrong exec redirect action");
      break;
  }
  return -1; /* never reached */
}