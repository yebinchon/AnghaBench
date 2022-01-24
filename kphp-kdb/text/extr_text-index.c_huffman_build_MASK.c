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
 int /*<<< orphan*/  FUNC0 (long long*,int,int) ; 

int FUNC1 (long long *A, int N) {
  int i, j, k, M = 0;

  A += N-1;

  /* build heap from pointers to non-zero frequences */
  for (i = 1 - N; i <= 0; i++) {
    if (A[i] > 0) {
      j = ++M;
      while (j > 1) {
	k = (j >> 1);
	if (A[(long) A[k]] <= A[i]) { break; }
	A[j] = A[k];
	j = k;
      }
      A[j] = i;
    }
  }

  if (M < 2) {
    if (M) {
      A[(long) A[1]] = 1;
    }
    return M;
  }

  k = M;

  /* while there are at least two elements in heap, combine two smallest of them into one */
  while (M >= 2) {
    long long x = A[1], y = A[M--];
    FUNC0 (A, M, y);
    y = A[1];
    A[M+1] = A[x] + A[y];
    A[x] = A[y] = M+1;
    FUNC0 (A, M, M+1);
  }

  /* compute code lengths */
  M = k;
  A[2] = 0;
  for (i = 3; i <= M; i++) {
    A[i] = A[(long) A[i]] + 1;
  }

  for (i = 1 - N; i <= 0; i++) {
    if (A[i] > 0) {
      A[i] = A[(long) A[i]] + 1;
    }
  }

  return M;
}