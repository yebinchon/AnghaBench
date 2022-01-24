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
struct TYPE_2__ {long long value; } ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int FUNC1 (int,int) ; 
 TYPE_1__ iterator ; 

int FUNC2 (int user_id, long long *Q, int max_res) {
  int res = FUNC1 (user_id, -1);
  if (res < 0) {
    return res;
  }
  res = 0;
  while (res < max_res && FUNC0 () >= 0) {
    Q[res++] = iterator.value;
  }
  return res;
}