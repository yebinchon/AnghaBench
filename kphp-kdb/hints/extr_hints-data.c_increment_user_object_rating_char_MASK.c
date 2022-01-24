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
typedef  int /*<<< orphan*/  user ;
struct lev_hints_increment_user_object_rating_char {int type; int /*<<< orphan*/  object_id; int /*<<< orphan*/  user_id; } ;

/* Variables and functions */
 int LEV_HINTS_INCREMENT_USER_OBJECT_RATING_CHAR ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int,int) ; 

int FUNC2 (struct lev_hints_increment_user_object_rating_char *E) {
  user *cur_user = FUNC0 (E->user_id);
  if (cur_user != NULL) {
    return FUNC1 (cur_user, E->type & 0xff, E->object_id, (E->type & 0xff00) >> 8, (E->type - LEV_HINTS_INCREMENT_USER_OBJECT_RATING_CHAR) >> 16);
  }

  return 0;
}