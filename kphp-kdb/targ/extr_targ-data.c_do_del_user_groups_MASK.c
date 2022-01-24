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
struct lev_groups_ext {int gr_num; int /*<<< orphan*/  groups; } ;
struct lev_groups {int /*<<< orphan*/  groups; } ;

/* Variables and functions */
 scalar_t__ LEV_TARG_GROUP_DEL ; 
 scalar_t__ LEV_TARG_GROUP_EXT_DEL ; 
 unsigned int MAX_USER_LEV_GROUPS ; 
 void* FUNC0 (scalar_t__,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int*,int) ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int*,int) ; 

int FUNC4 (int user_id, int List[], int len) {
  user_t *U = FUNC2 (user_id);
  if (!U || !len) {
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

  if (len < 256) {
    struct lev_groups *E = FUNC0 (LEV_TARG_GROUP_DEL + len, 8 + len * 4, user_id);
    FUNC3 (E->groups, List, len * 4);
  } else {
    struct lev_groups_ext *E = FUNC0 (LEV_TARG_GROUP_EXT_DEL, 12 + len * 4, user_id);
    E->gr_num = len;
    FUNC3 (E->groups, List, len * 4);
  }

  return FUNC1 (U, List, len);
}