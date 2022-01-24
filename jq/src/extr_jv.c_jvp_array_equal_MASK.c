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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(jv a, jv b) {
  if (FUNC2(a) != FUNC2(b))
    return 0;
  if (FUNC4(a) == FUNC4(b) &&
      FUNC3(a) == FUNC3(b))
    return 1;
  for (int i=0; i<FUNC2(a); i++) {
    if (!FUNC1(FUNC0(*FUNC5(a, i)),
                  FUNC0(*FUNC5(b, i))))
      return 0;
  }
  return 1;
}