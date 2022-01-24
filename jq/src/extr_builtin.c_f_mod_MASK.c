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
typedef  scalar_t__ intmax_t ;

/* Variables and functions */
 scalar_t__ JV_KIND_NUMBER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static jv FUNC5(jq_state *jq, jv input, jv a, jv b) {
  FUNC0(input);
  if (FUNC1(a) == JV_KIND_NUMBER && FUNC1(b) == JV_KIND_NUMBER) {
    if ((intmax_t)FUNC3(b) == 0)
      return FUNC4(a, b, "cannot be divided (remainder) because the divisor is zero");
    jv r = FUNC2((intmax_t)FUNC3(a) % (intmax_t)FUNC3(b));
    FUNC0(a);
    FUNC0(b);
    return r;
  } else {
    return FUNC4(a, b, "cannot be divided (remainder)");
  }
}