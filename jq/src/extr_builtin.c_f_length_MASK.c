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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static jv FUNC9(jq_state *jq, jv input) {
  if (FUNC3(input) == JV_KIND_ARRAY) {
    return FUNC4(FUNC1(input));
  } else if (FUNC3(input) == JV_KIND_OBJECT) {
    return FUNC4(FUNC6(input));
  } else if (FUNC3(input) == JV_KIND_STRING) {
    return FUNC4(FUNC7(input));
  } else if (FUNC3(input) == JV_KIND_NUMBER) {
    jv r = FUNC4(FUNC0(FUNC5(input)));
    FUNC2(input);
    return r;
  } else if (FUNC3(input) == JV_KIND_NULL) {
    FUNC2(input);
    return FUNC4(0);
  } else {
    return FUNC8(input, "has no length");
  }
}