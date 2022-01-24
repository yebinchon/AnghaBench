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
typedef  int /*<<< orphan*/  user_t ;

/* Variables and functions */
 unsigned int MAX_USER_LEV_GROUPS ; 
 int FUNC0 (int,int*,int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 

int FUNC3 (int user_id, int List[], int len) {
  user_t *U = FUNC2 (user_id);
  if (!U) {
    return 0;
  }
  if ((unsigned) len > MAX_USER_LEV_GROUPS) {
    return -1;
  }
  int i;
  for (i = 1; i < len; i++) {
    if (List[i] <= List[i-1]) {
      return -1;
    }
  }

  if (!len) {
    return FUNC1 (user_id);
  }
  FUNC1 (user_id);
  
  return FUNC0 (user_id, List, len);
}