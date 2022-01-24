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
struct lev_hints_set_user_object_rating {int user_id; long long object_id; float val; } ;

/* Variables and functions */
 scalar_t__ LEV_HINTS_SET_USER_OBJECT_RATING ; 
 struct lev_hints_set_user_object_rating* FUNC0 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (long long) ; 
 int /*<<< orphan*/  FUNC2 (float) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (struct lev_hints_set_user_object_rating*) ; 

int FUNC6 (int user_id, int object_type, long long object_id, float new_rating, int num) {
  if (!FUNC4 (object_type) || !FUNC3 (num) || !FUNC1 (object_id) || !FUNC2 (new_rating)) {
    return 0;
  }

  struct lev_hints_set_user_object_rating *E =
    FUNC0 (LEV_HINTS_SET_USER_OBJECT_RATING + (num << 8) + object_type, sizeof (struct lev_hints_set_user_object_rating), 0);

  E->user_id = user_id;
  E->object_id = object_id;
  E->val = new_rating;

  return FUNC5 (E);
}