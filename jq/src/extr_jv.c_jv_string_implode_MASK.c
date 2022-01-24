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
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  JV_KIND_ARRAY ; 
 int /*<<< orphan*/  JV_KIND_NUMBER ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

jv FUNC9(jv j) {
  FUNC1(FUNC0(j, JV_KIND_ARRAY));
  int len = FUNC3(FUNC4(j));
  jv s = FUNC8(len);
  int i;

  FUNC1(len >= 0);

  for (i = 0; i < len; i++) {
    jv n = FUNC2(FUNC4(j), i);
    FUNC1(FUNC0(n, JV_KIND_NUMBER));
    int nv = FUNC6(n);
    FUNC5(n);
    if (nv > 0x10FFFF)
      nv = 0xFFFD; // U+FFFD REPLACEMENT CHARACTER
    s = FUNC7(s, nv);
  }

  FUNC5(j);
  return s;
}