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

/* Variables and functions */
 scalar_t__ JV_KIND_INVALID ; 
 scalar_t__ JV_KIND_NULL ; 
 scalar_t__ JV_KIND_STRING ; 
 int /*<<< orphan*/  JV_PRINT_INVALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

jv FUNC10(jv msg) {
  if (FUNC4(msg) == JV_KIND_NULL ||
      (FUNC4(msg) == JV_KIND_INVALID && !FUNC6(FUNC1(msg)))) {
    FUNC3(msg);
    FUNC0(stderr, "jq: error: out of memory\n");
    return FUNC7();
  }

  if (FUNC4(msg) == JV_KIND_STRING)
    return msg;                         // expected to already be formatted

  if (FUNC4(msg) == JV_KIND_INVALID)
    msg = FUNC5(msg);

  if (FUNC4(msg) == JV_KIND_NULL)
    return FUNC10(msg);        // ENOMEM

  // Invalid with msg; prefix with "jq: error: "

  if (FUNC4(msg) != JV_KIND_INVALID) {
    if (FUNC4(msg) == JV_KIND_STRING)
      return FUNC8("jq: error: %s", FUNC9(msg));

    msg = FUNC2(msg, JV_PRINT_INVALID);
    if (FUNC4(msg) == JV_KIND_STRING)
      return FUNC8("jq: error: %s", FUNC9(msg));
    return FUNC10(FUNC7());  // ENOMEM
  }

  // An invalid inside an invalid!
  return FUNC10(FUNC5(msg));
}