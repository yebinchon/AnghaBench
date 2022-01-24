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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  JV_KIND_ARRAY ; 
 int /*<<< orphan*/  JV_KIND_OBJECT ; 
 int /*<<< orphan*/  JV_KIND_STRING ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC10(jv a, jv b) {
  int r = 1;
  if (FUNC5(a) != FUNC5(b)) {
    r = 0;
  } else if (FUNC0(a, JV_KIND_OBJECT)) {
    r = FUNC9(a, b);
  } else if (FUNC0(a, JV_KIND_ARRAY)) {
    r = FUNC8(a, b);
  } else if (FUNC0(a, JV_KIND_STRING)) {
    int b_len = FUNC6(FUNC2(b));
    if (b_len != 0) {
      r = FUNC1(FUNC7(a), FUNC6(FUNC2(a)),
                     FUNC7(b), b_len) != 0;
    } else {
      r = 1;
    }
  } else {
    r = FUNC3(FUNC2(a), FUNC2(b));
  }
  FUNC4(a);
  FUNC4(b);
  return r;
}