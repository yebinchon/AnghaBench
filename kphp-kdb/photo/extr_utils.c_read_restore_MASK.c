#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  val; struct TYPE_5__* next; } ;
typedef  TYPE_1__ restore_list ;
typedef  int /*<<< orphan*/  map_int_vptr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_1__** FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 

int FUNC6 (int *v, int n, map_int_vptr *h) {
  int i;
  restore_list *cur = NULL;
  for (i = 0; i < n; i++) {
    int x = v[i];
    if (x < 0) {
      cur = FUNC4 (FUNC0 (x));
    } else {
      FUNC5 (cur, x);
    }
    if (i + 1 == n || v[i + 1] < 0) {
      FUNC1 (cur != NULL);
      FUNC1 (cur->next != cur);
      FUNC1 (FUNC3 (h, cur->val) == NULL);
      *FUNC2 (h, cur->val) = cur;
    }
  }
  return sizeof (int) * n;
}