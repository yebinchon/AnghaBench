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
 int* golomb_crit ; 

int FUNC1 (int N, int K) {
  if (K == 0) {
    return 1;
  }
  FUNC0 (K > 0 && K <= N);
  long long t = (long long) 2*5278688*N / K + (7615537-5278688);
  if (t <= 167474174) {
    int i;
    for (i = 1; i <= 10; i++) {
      if ((int) t <= golomb_crit[i-1]) {
        return i;
      }
    }
  }
  int u = t / (2*7615537);
  return u;
}