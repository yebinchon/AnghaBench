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
 scalar_t__ FUNC0 () ; 
 int FUNC1 (int,int) ; 

int FUNC2 (int user_id, int use_aio) {
  int res = FUNC1 (user_id, use_aio);
  if (res < 0) {
    return res;
  }
  res = 0;
  while (FUNC0 () >= 0) {
    res ++;
  }
  return res;
}