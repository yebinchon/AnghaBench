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
 int Q_limit ; 
 int /*<<< orphan*/ * R ; 
 int R_cnt ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2 (void) {
  int N = R_cnt;
  if (Q_limit > N) {
    Q_limit = N;
  }
  long M = Q_limit, i;
  for (i = 0; (int) i < R_cnt; i++) {
    if (FUNC0() % N < M) {
      M--;
      FUNC1 (R[i]);
    }
    N--;
  }
}