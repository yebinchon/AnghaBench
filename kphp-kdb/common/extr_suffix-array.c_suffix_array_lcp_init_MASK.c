#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int n; int* lcp; unsigned char* y; int* p; } ;
typedef  TYPE_1__ suffix_array_t ;
typedef  int /*<<< orphan*/  dyn_mark_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,int const) ; 
 int* FUNC3 (int) ; 
 int* FUNC4 (int) ; 

__attribute__((used)) static void FUNC5 (suffix_array_t *A) {
  int i, j, k;
  const int n = A->n;
  A->lcp = FUNC3 (4 * (2 * n + 1));
  unsigned char *y = A->y;
  int *p = A->p;
  int *LCP = A->lcp;
  dyn_mark_t ss_mark;
  FUNC0 (ss_mark);
  int *R = FUNC4 (4 * n);  
  for (i = 0; i < n; i++) {
    R[p[i]] = i;
  }
  int l = 0;
  for (j = 0; j < n; j++) {
    if (--l < 0) {
      l = 0;
    }
    i = R[j];
    if (i != 0) {
      k = p[i-1];
      while (j + l < n && k + l < n && y[j+l] == y[k+l]) {
        l++;
      }
    } else {
      l = 0;
    }
    LCP[i] = l;
  }
  LCP[n] = 0;
  FUNC1 (ss_mark);
  for (i = n + n; i > n; i--) {
    LCP[i] = -1;
  }
  FUNC2 (A, -1, n);
}