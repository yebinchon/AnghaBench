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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static jv FUNC5(jq_state *jq, jv input, jv keys) {
  if (FUNC2(input) == JV_KIND_ARRAY &&
      FUNC2(keys) == JV_KIND_ARRAY &&
      FUNC0(FUNC1(input)) == FUNC0(FUNC1(keys))) {
    return FUNC3(input, keys);
  } else {
    return FUNC4(input, keys, "cannot be sorted, as they are not both arrays");
  }
}