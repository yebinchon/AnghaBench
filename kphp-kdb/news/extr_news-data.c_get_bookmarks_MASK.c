#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  value; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int,int) ; 
 scalar_t__ FUNC1 () ; 
 int FUNC2 (int,int) ; 
 TYPE_1__ iterator ; 

int FUNC3 (int user_id, int mask, int *Q, int max_res) {
  int res = FUNC2 (user_id, 1);
  if (res < 0) {
    return res;
  }
  res = 0;
  while (res < max_res && FUNC1 () >= 0) {
    FUNC0(iterator.value, Q[3 * res + 0], Q[3 * res + 1], Q[3 * res + 2]);
    if ((1 << Q[3 * res + 0]) & mask) {
      res ++;
    }
  }
  return res;
}