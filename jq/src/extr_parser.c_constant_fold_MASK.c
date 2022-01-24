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
typedef  int /*<<< orphan*/  jv ;
typedef  int /*<<< orphan*/  block ;

/* Variables and functions */
#define  EQ 131 
#define  GREATEREQ 130 
 scalar_t__ JV_KIND_INVALID ; 
 scalar_t__ JV_KIND_NULL ; 
 scalar_t__ JV_KIND_NUMBER ; 
 scalar_t__ JV_KIND_STRING ; 
#define  LESSEQ 129 
#define  NEQ 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (double) ; 
 double FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 () ; 

__attribute__((used)) static block FUNC15(block a, block b, int op) {
  if (!FUNC4(a) || !FUNC3(a) ||
      !FUNC4(b) || !FUNC3(b))
    return FUNC6();
  if (op == '+') {
    if (FUNC1(a) == JV_KIND_NULL) {
      FUNC2(a);
      return b;
    }
    if (FUNC1(b) == JV_KIND_NULL) {
      FUNC2(b);
      return a;
    }
  }
  if (FUNC1(a) != FUNC1(b))
    return FUNC6();

  jv res = FUNC10();

  if (FUNC1(a) == JV_KIND_NUMBER) {
    jv jv_a = FUNC0(a);
    jv jv_b = FUNC0(b);

    double na = FUNC12(jv_a);
    double nb = FUNC12(jv_b);

    int cmp = FUNC7(jv_a, jv_b);

    switch (op) {
    case '+': res = FUNC11(na + nb); break;
    case '-': res = FUNC11(na - nb); break;
    case '*': res = FUNC11(na * nb); break;
    case '/': res = FUNC11(na / nb); break;
    case EQ:  res = (cmp == 0 ? FUNC14() : FUNC8()); break;
    case NEQ: res = (cmp != 0 ? FUNC14() : FUNC8()); break;
    case '<': res = (cmp < 0 ? FUNC14() : FUNC8()); break;
    case '>': res = (cmp > 0 ? FUNC14() : FUNC8()); break;
    case LESSEQ: res = (cmp <= 0 ? FUNC14() : FUNC8()); break;
    case GREATEREQ: res = (cmp >= 0 ? FUNC14() : FUNC8()); break;
    default: break;
    }
  } else if (op == '+' && FUNC1(a) == JV_KIND_STRING) {
    res = FUNC13(FUNC0(a),  FUNC0(b));
  } else {
    return FUNC6();
  }

  if (FUNC9(res) == JV_KIND_INVALID)
    return FUNC6();

  FUNC2(a);
  FUNC2(b);
  return FUNC5(res);
}