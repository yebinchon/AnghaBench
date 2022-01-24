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
typedef  scalar_t__ jv_kind ;
typedef  int /*<<< orphan*/  jv ;
typedef  int /*<<< orphan*/  jq_state ;

/* Variables and functions */
 scalar_t__ JV_KIND_NUMBER ; 
 scalar_t__ JV_KIND_OBJECT ; 
 scalar_t__ JV_KIND_STRING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static jv FUNC11(jq_state *jq, jv input, jv a, jv b) {
  jv_kind ak = FUNC2(a);
  jv_kind bk = FUNC2(b);
  FUNC1(input);
  if (ak == JV_KIND_NUMBER && bk == JV_KIND_NUMBER) {
    jv r = FUNC4(FUNC5(a) * FUNC5(b));
    FUNC1(a);
    FUNC1(b);
    return r;
  } else if ((ak == JV_KIND_STRING && bk == JV_KIND_NUMBER) ||
             (ak == JV_KIND_NUMBER && bk == JV_KIND_STRING)) {
    jv str = a;
    jv num = b;
    if (ak == JV_KIND_NUMBER) {
      str = b;
      num = a;
    }
    int n;
    size_t alen = FUNC8(FUNC0(str));
    jv res = str;

    for (n = FUNC5(num) - 1; n > 0; n--)
      res = FUNC7(res, FUNC9(str), alen);

    FUNC1(num);
    if (n < 0) {
      FUNC1(str);
      return FUNC3();
    }
    return res;
  } else if (ak == JV_KIND_OBJECT && bk == JV_KIND_OBJECT) {
    return FUNC6(a, b);
  } else {
    return FUNC10(a, b, "cannot be multiplied");
  }
}