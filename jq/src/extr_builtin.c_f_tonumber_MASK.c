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
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static jv FUNC6(jq_state *jq, jv input) {
  if (FUNC1(input) == JV_KIND_NUMBER) {
    return input;
  }
  if (FUNC1(input) == JV_KIND_STRING) {
    jv parsed = FUNC3(FUNC4(input));
    if (!FUNC2(parsed) || FUNC1(parsed) == JV_KIND_NUMBER) {
      FUNC0(input);
      return parsed;
    }
  }
  return FUNC5(input, "cannot be parsed as a number");
}