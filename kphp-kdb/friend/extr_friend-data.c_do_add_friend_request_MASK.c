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
struct lev_add_friend {int friend_id; int cat; } ;

/* Variables and functions */
 int /*<<< orphan*/  LEV_FR_ADD_FRIENDREQ ; 
 int /*<<< orphan*/  LEV_FR_NEW_FRIENDREQ ; 
 int /*<<< orphan*/  LEV_FR_REPLACE_FRIENDREQ ; 
 int FUNC0 (int /*<<< orphan*/ *,int,int,int) ; 
 struct lev_add_friend* FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 
 int /*<<< orphan*/ * FUNC4 (int) ; 

int FUNC5 (int user_id, int friend_id, int cat, int force) {
  user_t *U;
  if (FUNC2 (user_id) < 0 || friend_id <= 0 || cat < 0 || (unsigned) force > 2) {
    return -1;
  }

  struct lev_add_friend *E = FUNC1 (force ? (force > 1 ? LEV_FR_NEW_FRIENDREQ : LEV_FR_ADD_FRIENDREQ) : LEV_FR_REPLACE_FRIENDREQ, 16, user_id);
  E->friend_id = friend_id;
  E->cat = cat;

  U = (force ? FUNC4 (user_id) : FUNC3 (user_id));
  return FUNC0 (U, friend_id, cat, force);
}