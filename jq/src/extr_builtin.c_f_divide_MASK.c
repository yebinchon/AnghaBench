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
 scalar_t__ JV_KIND_NUMBER ; 
 scalar_t__ JV_KIND_STRING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (double) ; 
 double FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static jv FUNC6(jq_state *jq, jv input, jv a, jv b) {
  FUNC0(input);
  if (FUNC1(a) == JV_KIND_NUMBER && FUNC1(b) == JV_KIND_NUMBER) {
    if (FUNC3(b) == 0.0)
      return FUNC5(a, b, "cannot be divided because the divisor is zero");
    jv r = FUNC2(FUNC3(a) / FUNC3(b));
    FUNC0(a);
    FUNC0(b);
    return r;
  } else if (FUNC1(a) == JV_KIND_STRING && FUNC1(b) == JV_KIND_STRING) {
    return FUNC4(a, b);
  } else {
    return FUNC5(a, b, "cannot be divided");
  }
}