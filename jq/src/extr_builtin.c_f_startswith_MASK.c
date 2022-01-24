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
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static jv FUNC10(jq_state *jq, jv a, jv b) {
  if (FUNC3(a) != JV_KIND_STRING || FUNC3(b) != JV_KIND_STRING)
    return FUNC9(a, b, FUNC4("startswith() requires string inputs"));
  int alen = FUNC5(FUNC0(a));
  int blen = FUNC5(FUNC0(b));
  jv ret;

  if (blen <= alen && FUNC8(FUNC6(a), FUNC6(b), blen) == 0)
    ret = FUNC7();
  else
    ret = FUNC1();
  FUNC2(a);
  FUNC2(b);
  return ret;
}