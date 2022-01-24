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
typedef  int /*<<< orphan*/  jq_state ;

/* Variables and functions */
 scalar_t__ JV_KIND_STRING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 size_t FUNC5 (int /*<<< orphan*/ ) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 (char const*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static jv FUNC10(jq_state *jq, jv a, jv b) {
  if (FUNC3(a) != JV_KIND_STRING || FUNC3(b) != JV_KIND_STRING)
    return FUNC9(a, b, FUNC4("endswith() requires string inputs"));
  const char *astr = FUNC6(a);
  const char *bstr = FUNC6(b);
  size_t alen = FUNC5(FUNC0(a));
  size_t blen = FUNC5(FUNC0(b));
  jv ret;;

  if (alen < blen ||
     FUNC8(astr + (alen - blen), bstr, blen) != 0)
    ret = FUNC1();
  else
    ret = FUNC7();
  FUNC2(a);
  FUNC2(b);
  return ret;
}