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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static void FUNC4 (int **p, int id, int MIN_LIST_SIZE, int MAX_LIST_SIZE) {
  int *q = *p;
  int i, c;
  if (!q) {
    *p = q = (int *) FUNC3 (MIN_LIST_SIZE * 2 * sizeof(int)) + 2;
    q[-2] = MIN_LIST_SIZE-1;
    q[-1] = 0;
  }
  for (i = 0; i < q[-1]; i++) {
    if (q[2*i] == id) {
      c = ++q[2*i+1];
      if (i && c > q[2*i-1]) {
        while (i && c > q[2*i-1]) {
          q[2*i] = q[2*i-2];
          q[2*i+1] = q[2*i-1];
          i--;
        }
        q[2*i] = id;
        q[2*i+1] = c;
      }
      return;
    }
  }
  if (i == q[-2]) {
    if (i < MAX_LIST_SIZE) {
      int *r = q;
      q = (int *) FUNC3 ((i + 1) * 4 * sizeof (int)) + 2;
      q[-2] = 2*i+1;
      FUNC1 (q, r, i * 2 * sizeof(int));
      FUNC2 (r - 2, (i + 1) * 2 * sizeof (int));
      *p = q;
    } else {
      return;
    }
  }
  FUNC0 (i < q[-2]);
  q[2*i] = id;
  q[2*i+1] = 1;
  q[-1] = i+1;
}