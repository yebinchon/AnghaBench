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
typedef  int mrb_int ;

/* Variables and functions */
 int /*<<< orphan*/  E_ARGUMENT_ERROR ; 
 int /*<<< orphan*/  MRB_TT_RANGE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static mrb_value
FUNC12(mrb_state *mrb, mrb_value self)
{
  mrb_value bt, v, length;
  mrb_int bt_len, argc, lev, n;

  bt = FUNC6(mrb);
  bt_len = FUNC0(bt);
  argc = FUNC5(mrb, "|oo", &v, &length);

  switch (argc) {
    case 0:
      lev = 1;
      n = bt_len - lev;
      break;
    case 1:
      if (FUNC11(v) == MRB_TT_RANGE) {
        mrb_int beg, len;
        if (FUNC9(mrb, v, &beg, &len, bt_len, TRUE) == 1) {
          lev = beg;
          n = len;
        }
        else {
          return FUNC7();
        }
      }
      else {
        v = FUNC10(mrb, v);
        lev = FUNC2(v);
        if (lev < 0) {
          FUNC8(mrb, E_ARGUMENT_ERROR, "negative level (%S)", v);
        }
        n = bt_len - lev;
      }
      break;
    case 2:
      lev = FUNC2(FUNC10(mrb, v));
      n = FUNC2(FUNC10(mrb, length));
      if (lev < 0) {
        FUNC8(mrb, E_ARGUMENT_ERROR, "negative level (%S)", v);
      }
      if (n < 0) {
        FUNC8(mrb, E_ARGUMENT_ERROR, "negative size (%S)", length);
      }
      break;
    default:
      lev = n = 0;
      break;
  }

  if (n == 0) {
    return FUNC1(mrb);
  }

  return FUNC4(mrb, bt, "[]", 2, FUNC3(lev), FUNC3(n));
}