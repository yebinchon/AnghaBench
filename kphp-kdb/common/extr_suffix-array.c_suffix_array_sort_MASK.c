#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {unsigned char* y; int n; int* p; } ;
typedef  TYPE_1__ suffix_array_t ;
typedef  int /*<<< orphan*/  dyn_mark_t ;
struct TYPE_6__ {void* value; void* prev; void* head; } ;
typedef  TYPE_2__ buckets_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int*,int const,int*,int) ; 
 void* FUNC3 (int) ; 
 int* FUNC4 (int) ; 

__attribute__((used)) static void FUNC5 (suffix_array_t *A) {
  unsigned char *y = A->y;
  const int n = A->n;
  int *p = A->p;
  int i, r, m;
  dyn_mark_t ss_mark;
  FUNC0 (ss_mark);
  int *c = FUNC4 (4 * 256);
  for (i = 0; i < n; i++) {
    c[y[i]]++;
  }
  m = 0;
  for (i = 0; i < 256; i++) {
    if (c[i]) {
      c[i] = m++;
    }
  }
  /* m - cardalph (y) */
  buckets_t B;
  B.head = FUNC3 (4 * (n + 1));
  B.head++;
  B.prev = FUNC3 (4 * n);
  B.value = FUNC3 (4 * n);
  int *R = FUNC3 (4 * n), *W = FUNC3 (4 * n);
  for (r = 0; r < n; r++) {
    p[r] = r;
  }
  int k = 1;
  for (i = 0; i < n; i++) {
    R[i] = c[y[i]];
  }
  FUNC2 (&B, p, n, R, 0);
  i = m - 1;
  while (i < n - 1) {
    FUNC2 (&B, p, n, R, k);
    FUNC2 (&B, p, n, R, 0);
    W[p[0]] = i = 0;
    for (r = 1; r < n; r++) {
      int p1 = p[r], p2 = p[r-1];
      if (R[p1] != R[p2]) {
        W[p1] = ++i;
        continue;
      }
      p1 += k;
      p2 += k;
      if ((p1 < n ? R[p1] : -1) != (p2 < n ? R[p2] : -1)) {
        i++;
      }
      W[p[r]] = i;
    }
    int *tmp = R; R = W; W = tmp;
    k <<= 1;
  }
  FUNC1 (ss_mark);
}