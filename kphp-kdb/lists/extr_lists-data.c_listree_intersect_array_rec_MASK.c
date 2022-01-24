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
typedef  int /*<<< orphan*/  object_id_t ;
typedef  int /*<<< orphan*/  listree_t ;

/* Variables and functions */
 int /*<<< orphan*/  LA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4 (listree_t *LT, int a, int b, object_id_t upper_bound) {
  if (a > b) {
    return;
  }
  int m = (a + b) >> 1;
  object_id_t x = FUNC1 (LT, m);
  if (FUNC2 (FUNC0 (LA, 0), x)) {
    FUNC4 (LT, a, m - 1, x);
  }
  FUNC3 (x);
  if (FUNC2 (FUNC0 (LA, 0), upper_bound)) {
    FUNC4 (LT, m + 1, b, upper_bound);
  }
}