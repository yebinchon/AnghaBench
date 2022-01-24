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
 scalar_t__ JV_KIND_ARRAY ; 
 scalar_t__ JV_KIND_NULL ; 
 scalar_t__ JV_KIND_NUMBER ; 
 scalar_t__ JV_KIND_OBJECT ; 
 scalar_t__ JV_KIND_STRING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

jv FUNC12(jv t, jv k) {
  FUNC0(FUNC7(t));
  FUNC0(FUNC7(k));
  jv ret;
  if (FUNC5(t) == JV_KIND_NULL) {
    FUNC4(t);
    FUNC4(k);
    ret = FUNC3();
  } else if (FUNC5(t) == JV_KIND_OBJECT &&
             FUNC5(k) == JV_KIND_STRING) {
    jv elem = FUNC10(t, k);
    ret = FUNC2(FUNC7(elem));
    FUNC4(elem);
  } else if (FUNC5(t) == JV_KIND_ARRAY &&
             FUNC5(k) == JV_KIND_NUMBER) {
    jv elem = FUNC1(t, (int)FUNC9(k));
    ret = FUNC2(FUNC7(elem));
    FUNC4(k);
    FUNC4(elem);
  } else {
    ret = FUNC6(FUNC11("Cannot check whether %s has a %s key",
                                            FUNC8(FUNC5(t)),
                                            FUNC8(FUNC5(k))));
    FUNC4(t);
    FUNC4(k);
  }
  return ret;
}