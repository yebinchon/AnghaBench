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
typedef  int /*<<< orphan*/  mc_point_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1 (mc_point_t *A, int N) {
  int i, j;
  mc_point_t h, t;
  if (N <= 0) {
    return;
  }
  if (N == 1) {
    if (FUNC0 (&A[0], &A[1]) > 0) {
      t = A[0];
      A[0] = A[1];
      A[1] = t;
    }
    return;
  }
  i = 0;
  j = N;
  h = A[j >> 1];
  do {
    while (FUNC0 (&A[i], &h) < 0) { i++; }
    while (FUNC0 (&A[j], &h) > 0) { j--; }
    if (i <= j) {
      t = A[i];  A[i++] = A[j];  A[j--] = t;
    }
  } while (i <= j);
  FUNC1 (A+i, N-i);
  FUNC1 (A, j);
}