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

/* Variables and functions */
 int N ; 
 int* _id ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 double FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,double,...) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC5 (void) {
  int i;
  FUNC3 (stderr, "[%6.2f] Del all patterns... [free bytes = %d] ", FUNC1(), FUNC2());
  for (i = 0; i < N; i++) {
    FUNC0 (_id[i]);
  }

  // Try to del inexisting pattern
  // Suppose that there is no such id in trie
  FUNC0 (178537843);

  FUNC3 (stderr, "OK [free bytes = %f]\n", FUNC2());
  FUNC4();
}