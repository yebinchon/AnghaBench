#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  chg_list_en; int /*<<< orphan*/  chg_list_st; } ;
typedef  TYPE_1__ user ;
struct lev_hints_set_user_rating_state {int type; int /*<<< orphan*/  user_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 

int FUNC2 (struct lev_hints_set_user_rating_state *E) {
  int state = (E->type & 0xff);
  if (state >= 2 || state < 0) {
    return 0;
  }

  user *cur_user = FUNC1 (E->user_id);
  if (cur_user != NULL) {
    FUNC0 (&cur_user->chg_list_st, &cur_user->chg_list_en, state + 1, 0, NULL);
    return 1;
  }

  return 0;
}