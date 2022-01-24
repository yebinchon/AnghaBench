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
typedef  int mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  int mrb_int ;

/* Variables and functions */
 int /*<<< orphan*/  E_RANGE_ERROR ; 
 int /*<<< orphan*/  E_TYPE_ERROR ; 
#define  MRB_TT_FIXNUM 130 
#define  MRB_TT_FLOAT 129 
#define  MRB_TT_RANGE 128 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  TRUE ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int*,int*) ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,int*,int*,int,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ *,int,int,int) ; 
 int FUNC11 (int) ; 

__attribute__((used)) static mrb_value
FUNC12(mrb_state *mrb, mrb_value str)
{
  mrb_value a1;
  mrb_int len;

  if (FUNC4(mrb) == 2) {
    mrb_int pos;
    FUNC5(mrb, "ii", &pos, &len);
    return FUNC10(mrb, str, pos, len);
  }
  FUNC5(mrb, "o|i", &a1, &len);
  switch (FUNC11(a1)) {
  case MRB_TT_RANGE:
    {
      mrb_int beg;

      len = FUNC0(str);
      switch (FUNC9(mrb, a1, &beg, &len, len, TRUE)) {
      case 0:                   /* not range */
        break;
      case 1:                   /* range */
        return FUNC10(mrb, str, beg, len);
      case 2:                   /* out of range */
        FUNC8(mrb, E_RANGE_ERROR, "%S out of range", a1);
        break;
      }
      return FUNC6();
    }
#ifndef MRB_WITHOUT_FLOAT
  case MRB_TT_FLOAT:
    a1 = FUNC2((mrb_int)FUNC3(a1));
    /* fall through */
#endif
  case MRB_TT_FIXNUM:
    return FUNC10(mrb, str, FUNC1(a1), 1);
  default:
    FUNC7(mrb, E_TYPE_ERROR, "wrong type of argument");
  }
  /* not reached */
  return FUNC6();
}