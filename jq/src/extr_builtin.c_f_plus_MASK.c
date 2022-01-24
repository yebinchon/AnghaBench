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
 scalar_t__ JV_KIND_ARRAY ; 
 scalar_t__ JV_KIND_NULL ; 
 scalar_t__ JV_KIND_NUMBER ; 
 scalar_t__ JV_KIND_OBJECT ; 
 scalar_t__ JV_KIND_STRING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static jv FUNC8(jq_state *jq, jv input, jv a, jv b) {
  FUNC1(input);
  if (FUNC2(a) == JV_KIND_NULL) {
    FUNC1(a);
    return b;
  } else if (FUNC2(b) == JV_KIND_NULL) {
    FUNC1(b);
    return a;
  } else if (FUNC2(a) == JV_KIND_NUMBER && FUNC2(b) == JV_KIND_NUMBER) {
    jv r = FUNC3(FUNC4(a) +
                     FUNC4(b));
    FUNC1(a);
    FUNC1(b);
    return r;
  } else if (FUNC2(a) == JV_KIND_STRING && FUNC2(b) == JV_KIND_STRING) {
    return FUNC6(a, b);
  } else if (FUNC2(a) == JV_KIND_ARRAY && FUNC2(b) == JV_KIND_ARRAY) {
    return FUNC0(a, b);
  } else if (FUNC2(a) == JV_KIND_OBJECT && FUNC2(b) == JV_KIND_OBJECT) {
    return FUNC5(a, b);
  } else {
    return FUNC7(a, b, "cannot be added");
  }
}