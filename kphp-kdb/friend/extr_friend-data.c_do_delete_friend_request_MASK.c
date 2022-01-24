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
struct lev_del_friend {int friend_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  LEV_FR_DEL_FRIENDREQ ; 
 struct lev_del_friend* FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

int FUNC4 (int user_id, int friend_id) {
  struct lev_del_friend *E;

  if (FUNC1 (user_id) < 0 || friend_id <= 0) {
    return -1;
  }

  E = FUNC0 (LEV_FR_DEL_FRIENDREQ, 12, user_id);
  E->friend_id = friend_id;

  return FUNC2 (FUNC3 (user_id), friend_id);
}