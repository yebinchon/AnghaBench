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
struct lev_groups {int* groups; } ;

/* Variables and functions */
 scalar_t__ LEV_TARG_GROUP_ADD ; 
 int FUNC0 (int /*<<< orphan*/ *,int*,int) ; 
 struct lev_groups* FUNC1 (scalar_t__,int,int) ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 

int FUNC3 (int user_id, int group_id) {
  user_t *U = FUNC2 (user_id);
  if (!U) {
    return 0;
  }

  struct lev_groups *E = FUNC1 (LEV_TARG_GROUP_ADD + 1, 12, user_id);
  E->groups[0] = group_id;

  return FUNC0 (U, E->groups, 1);
}